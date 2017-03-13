//
//  Rectangle.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(instancetype)initWithCommonAttributes:(NSDictionary *)attributes
{
    self = [super initWithCommonAttributes:attributes];
    
    if (self)
    {
        self.width = [[attributes objectForKey:@"width"] intValue];
        self.height = [[attributes objectForKey:@"height"] intValue];
    }
    return self;
}

@end
