//
//  Service.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking/AFNetworking.h"
#import "ServiceProtocol.h"

@interface Service : NSObject

- (void)makePOSTServiceRequestWithUrl:(NSString*)url
                               params:(NSDictionary*)params
                             delegate:(id<ServiceDelegate>)delegate;

@end
