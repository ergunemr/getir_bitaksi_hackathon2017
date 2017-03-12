//
//  ElementsRequest.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "ElementsRequest.h"

@implementation ElementsRequest

- (instancetype)initWithEmail:(NSString*)email
                         name:(NSString*)name
                       andGsm:(NSString*)gsm
{
    self = [super init];
    
    if (self)
    {
        self.requestParams = @{@"email":email,
                               @"name":name,
                               @"gsm":gsm};
    }
    return self;
}

@end
