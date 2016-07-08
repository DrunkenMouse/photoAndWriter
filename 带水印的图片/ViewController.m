//
//  ViewController.m
//  带水印的图片
//
//  Created by 王奥东 on 16/3/19.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0.0);
    CGContextRef ctf = UIGraphicsGetCurrentContext();
    
    
    UIImage *image = [UIImage imageNamed:@"meizi"];
    [image drawInRect:self.view.bounds];
    
    NSString *str = @"hui hen";
    [str drawAtPoint:CGPointZero withAttributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    
    UIImage *logo = [UIImage imageNamed:@"me"];
    [logo drawInRect:CGRectMake(self.view.bounds.size.width - logo.size.width, self.view.bounds.size.height - logo.size.height, logo.size.width, logo.size.height)];
    
    UIImage *images = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    
    CGContextAddRect(ctf, self.view.bounds);
  

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
