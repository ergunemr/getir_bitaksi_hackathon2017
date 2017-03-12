//
//  UIColorHexRGB.h
//  Pods
//
//  Created by Matthew on 7/3/16.
//
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//@interface UIColorHexRGB : NSObject
@interface UIColor (HexRGB)

+ (UIColor*)colorWithHexString:(NSString*)hex;

@end
