//
//  LinkProvider.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "LinkProvider.h"

@implementation LinkProvider
    
+ (instancetype)sharedInstance
{
    static LinkProvider *sharedInstance = nil;
    
    @synchronized(self)
    {
        if (sharedInstance == nil)
        {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}

- (NSString*)getUrlWithPostfix:(NSString*)postfix
{
    return [NSString stringWithFormat:@"%@%@", BASE_URL, postfix];
}

@end
