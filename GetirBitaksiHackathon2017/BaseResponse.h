//
//  BaseResponse.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseResponse : NSObject

@property (strong, nonatomic) NSDictionary *responseDict;
@property (nonatomic) int code;
@property (strong, nonatomic) NSString *inviteCode;
@property (nonatomic, strong) NSString *message;


- (instancetype)initWithResponseDict:(NSDictionary*)responseDict;

@end
