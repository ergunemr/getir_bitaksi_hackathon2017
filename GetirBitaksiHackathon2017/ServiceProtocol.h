//
//  ServiceProtocol.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#ifndef ServiceProtocol_h
#define ServiceProtocol_h

#import "BaseResponse.h"

@protocol ServiceDelegate <NSObject>

- (void)serviceCallFinished:(BaseResponse*)responseObject;
- (void)serviceFailed:(NSString*)errorMessage;

@end

#endif /* ServiceProtocol_h */
