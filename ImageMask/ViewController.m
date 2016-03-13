//
//  ViewController.m
//  ImageMask
//
//  Created by Macx on 16/3/13.
//  Copyright © 2016年 Macx. All rights reserved.
//

#import "ViewController.h"
#import "UIimageMask.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"Xman.jpg"];
    
    image = [UIimageMask waterMaskImage:image text:@"zn make"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    imageView.image = image;
    [self.view addSubview:imageView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
