//
//  ElementsRequest.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "BaseRequest.h"

@interface ElementsRequest : BaseRequest

- (instancetype)initWithEmail:(NSString*)email
                         name:(NSString*)name
                       andGsm:(NSString*)gsm;

@end
