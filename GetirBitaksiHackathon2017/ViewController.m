//
//  ViewController.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#define SELF_EMAIL @"ergunemr@gmail.com"
#define SELF_NAME @"Emre Ergün"
#define SELF_GSM @"05418063520"

#import "ViewController.h"
#import "Rectangle.h"
#import "Circle.h"
#import "UIColorHexRGB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ElementsManager *manager = [[ElementsManager alloc] initWithService:self.service];
    [manager setDelegate:self];
    
    [manager getElementsWithEmail:SELF_EMAIL
                             name:SELF_NAME
                           andGsm:SELF_GSM];
}

- (void)getElementsFinished:(NSArray *)elements
{
    for (BaseElement *element in elements)
    {
        [self drawLine:element];
    }
}

-(void)getElementsFailed:(NSString *)errorMessage
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Hata"
                                 message:errorMessage
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)drawLine:(BaseElement *)element
{
    UIView *shape = [[UIView alloc] init];
    
    CGPoint position = CGPointMake(element.xPosition, element.yPosition);
    CGSize size;
    CGFloat cornerRadius;
    UIColor *color = [UIColor colorWithHexString:element.colorString];
    
    if ([element.typeString isEqualToString:@"circle"])
    {
        size = CGSizeMake(((Circle*) element).r * 2, ((Circle*) element).r * 2);
        cornerRadius = size.height / 2;
    }
    else
    {
        size = CGSizeMake(((Rectangle*) element).width, ((Rectangle*) element).height);
        cornerRadius = 0;
    }
    
    [shape setFrame:CGRectMake(position.x, position.y, size.width, size.height)];
    [shape setBackgroundColor:color];
    shape.layer.cornerRadius = cornerRadius;
    [shape.layer setMasksToBounds:YES];
    
    [self.view addSubview:shape];
}

@end
