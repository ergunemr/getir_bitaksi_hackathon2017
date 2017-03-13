//
//  BaseElement.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseElement : NSObject

@property (nonatomic) CGFloat xPosition;
@property (nonatomic) CGFloat yPosition;
@property (nonatomic, strong) NSString *colorString;
@property (strong, nonatomic) NSString *typeString;

- (instancetype)initWithCommonAttributes:(NSDictionary*)attributes;

@end
