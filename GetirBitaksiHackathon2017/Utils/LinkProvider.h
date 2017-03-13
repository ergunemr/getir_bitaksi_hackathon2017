//
//  LinkProvider.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#define BASE_URL @"https://getir-bitaksi-hackathon.herokuapp.com/"

#import <Foundation/Foundation.h>

@interface LinkProvider : NSObject

+ (instancetype)sharedInstance;

- (NSString*)getUrlWithPostfix:(NSString*)postfix;

@end
