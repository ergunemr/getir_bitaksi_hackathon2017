//
//  ElementsResponse.m
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import "ElementsResponse.h"
#import "Circle.h"
#import "Rectangle.h"

@implementation ElementsResponse

- (instancetype)initWithResponseDict:(NSDictionary *)responseDict
{
    self = [super initWithResponseDict:responseDict];
    
    if (self)
    {
        NSMutableArray *mutableElementsArray = [NSMutableArray new];
        
        for (NSDictionary *elementDict in [responseDict objectForKey:@"elements"])
        {
            NSString *typeString = [elementDict objectForKey:@"type"];
            BaseElement *currentElement;
            
            if ([typeString isEqualToString:@"circle"])
            {
                currentElement = [[Circle alloc] initWithCommonAttributes:elementDict];
            }
            else if ([typeString isEqualToString:@"rectangle"])
            {
                currentElement = [[Rectangle alloc] initWithCommonAttributes:elementDict];
            }
            [mutableElementsArray addObject:currentElement];
        }
        self.elements = [mutableElementsArray copy];
    }
    return self;
}

@end
