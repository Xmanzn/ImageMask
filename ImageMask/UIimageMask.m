//
//  UIimageMask.m
//  ImageMask
//
//  Created by Macx on 16/3/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import "UIimageMask.h"

@implementation UIimageMask

+ (UIImage *)waterMaskImage:(UIImage *)orginalImage text:(NSString *)text {
    
    UIGraphicsBeginImageContext(orginalImage.size);
    
    [orginalImage drawInRect:CGRectMake(0, 0, orginalImage.size.width, orginalImage.size.height)];
//    绘制水印文字
    CGRect frame = CGRectMake(0, orginalImage.size.height - 40, orginalImage.size.width, 40);
    UIFont *font = [UIFont systemFontOfSize:30];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.alignment = NSTextAlignmentLeft;
    
    
    NSDictionary *attibutes = @{
                                NSFontAttributeName : font,
                                NSParagraphStyleAttributeName : style,
                                NSForegroundColorAttributeName : [UIColor whiteColor],
                                };
    
    [text drawInRect:frame withAttributes:attibutes];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();

    
    return newImage;
}


@end
