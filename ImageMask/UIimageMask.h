//
//  UIimageMask.h
//  ImageMask
//
//  Created by Macx on 16/3/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface UIimageMask : NSObject

+ (UIImage *)waterMaskImage:(UIImage *)orginalImage text:(NSString *)text;

@end
