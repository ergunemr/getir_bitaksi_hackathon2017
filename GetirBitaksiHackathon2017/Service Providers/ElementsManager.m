//
//  ElementsManager.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#define ELEMENTS_REQUEST_KEY @"getElements"

#import "ElementsManager.h"
#import "LinkProvider.h"
#import "ElementsRequest.h"
#import "ElementsResponse.h"

@implementation ElementsManager

-(instancetype)initWithService:(Service *)service
{
    self = [super init];
    if (self)
    {
        self.service = service;
    }
    return self;
}

- (void)getElementsWithEmail:(NSString*)email name:(NSString*)name andGsm:(NSString*)gsm;
{
    NSString *elementsUrl = [[LinkProvider sharedInstance] getUrlWithPostfix:ELEMENTS_REQUEST_KEY];
    
    ElementsRequest *elementRequest = [[ElementsRequest alloc] initWithEmail:email
                                                                        name:name
                                                                      andGsm:gsm];
    
    [self.service makePOSTServiceRequestWithUrl:elementsUrl
                                         params:elementRequest.requestParams
                                       delegate:self];
}

#pragma mark -
#pragma mark - Service Delegate Methods

- (void)serviceCallFinished:(BaseResponse *)responseObject
{
    if ([self.delegate respondsToSelector:@selector(getElementsFinished:)])
    {
        ElementsResponse *elementsResponse = [[ElementsResponse alloc] initWithResponseDict:responseObject.responseDict];
        [self.delegate getElementsFinished:elementsResponse.elements];
    }
}

- (void)serviceFailed:(NSString *)errorMessage
{
    if ([self.delegate respondsToSelector:@selector(getElementsFailed:)])
    {
        [self.delegate getElementsFailed:errorMessage];
    }
}

@end
