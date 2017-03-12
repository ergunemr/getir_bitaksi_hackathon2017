//
//  BaseElement.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "BaseElement.h"

@implementation BaseElement

- (instancetype)initWithCommonAttributes:(NSDictionary*)attributes
{
    self = [super init];
    if (self)
    {
        self.xPosition = [[attributes objectForKey:@"xPosition"] intValue];
        self.yPosition = [[attributes objectForKey:@"yPosition"] intValue];
        self.colorString = [attributes objectForKey:@"color"];
        self.typeString = [attributes objectForKey:@"type"];
    }
    return self;
}

@end
