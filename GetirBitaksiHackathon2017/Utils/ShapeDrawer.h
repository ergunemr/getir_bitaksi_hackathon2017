//
//  ShapeDrawer.h
//  GetirBitaksiHackathon2017
//
//  Created by Emre Ergün on 13/03/17.
//  Copyright © 2017 Emre Ergün. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Rectangle.h"
#import "Circle.h"
#import "UIColorHexRGB.h"

@interface ShapeDrawer : NSObject

- (instancetype)initWithSuperview:(UIView*)board;

- (void)drawElementToBoard:(BaseElement*)element;

@end
