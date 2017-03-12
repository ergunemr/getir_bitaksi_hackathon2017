//
//  BaseResponse.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "BaseResponse.h"

@implementation BaseResponse

- (instancetype)initWithResponseDict:(NSDictionary*)responseDict
{
    self = [super init];
    if (self)
    {
        self.responseDict = responseDict;
        self.code = [[self.responseDict objectForKey:@"code"] intValue];
        self.message = [self.responseDict objectForKey:@"msg"];
        self.inviteCode = [self.responseDict objectForKey:@"inviteCode"];
    }
    return self;
}

@end
