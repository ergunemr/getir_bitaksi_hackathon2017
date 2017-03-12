//
//  ElementsManager.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"
#import "ServiceProtocol.h"

@protocol ElementsManagerDelegate <NSObject>

- (void)getElementsFinished:(NSArray*)elements;
- (void)getElementsFailed:(NSString*)errorMessage;

@end

@interface ElementsManager : NSObject <ServiceDelegate>

@property (weak, nonatomic) id<ElementsManagerDelegate> delegate;
@property (strong, nonatomic) Service *service;

- (instancetype)initWithService:(Service*)service;

- (void)getElementsWithEmail:(NSString*)email
                        name:(NSString*)name
                      andGsm:(NSString*)gsm;

@end
