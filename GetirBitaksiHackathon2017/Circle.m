//
//  Circle.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "Circle.h"

@implementation Circle

-(instancetype)initWithCommonAttributes:(NSDictionary *)attributes
{
    self = [super initWithCommonAttributes:attributes];
    
    if (self)
    {
        self.r = [[attributes objectForKey:@"r"] intValue];
    }
    
    return self;
}

@end
