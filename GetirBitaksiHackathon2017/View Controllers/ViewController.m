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

#define PROGRESS_HUD_STATUS_TEXT @"Getting Elements.."

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) ElementsManager *manager;
@property (strong, nonatomic) ShapeDrawer *drawer;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initializations
    
    self.manager = [[ElementsManager alloc] initWithService:self.service];
    [self.manager setDelegate:self];
    
    self.drawer = [[ShapeDrawer alloc] initWithSuperview:self.view];
    
    
    // GetElements Service Call
    
    [self.manager getElementsWithEmail:SELF_EMAIL
                             name:SELF_NAME
                           andGsm:SELF_GSM];
    
    [SVProgressHUD showInfoWithStatus:PROGRESS_HUD_STATUS_TEXT];
}

- (void)getElementsFinished:(NSArray *)elements
{
    [SVProgressHUD dismiss];
    for (BaseElement *element in elements)
    {
        [self.drawer drawElementToBoard:element];
    }
}

-(void)getElementsFailed:(NSString *)errorMessage
{
    [SVProgressHUD dismiss];
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Error"
                                 message:errorMessage
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Allright" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:action];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
