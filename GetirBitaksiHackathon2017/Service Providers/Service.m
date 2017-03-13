//
//  Service.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "Service.h"

@implementation Service

-(void)makePOSTServiceRequestWithUrl:(NSString *)url
                              params:(NSDictionary *)params
                            delegate:(id<ServiceDelegate>)delegate
{
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
    
    [sessionManager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       
        BaseResponse *response = [[BaseResponse alloc] initWithResponseDict:responseObject];
        [delegate serviceCallFinished:response];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [delegate serviceFailed:error.userInfo.description];
        
    }];
}

@end
