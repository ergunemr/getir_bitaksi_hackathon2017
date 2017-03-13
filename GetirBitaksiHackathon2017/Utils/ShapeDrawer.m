//
//  ShapeDrawer.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "ShapeDrawer.h"

@interface ShapeDrawer()
@property (strong, nonatomic) UIView *board;
@end


@implementation ShapeDrawer


-(instancetype)initWithSuperview:(UIView *)board
{
    self = [super init];
    if (self)
    {
        self.board = board;
    }
    return self;
}

- (void)drawElementToBoard:(BaseElement*)element
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
    
    [self.board addSubview:shape];
}

@end
