//
//  ViewController.m
//  RoundImageView
//
//  Created by huanghy on 16/4/16.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView * portaitImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
    portaitImageView.frame = CGRectMake(0, 0, 200, 200);
    portaitImageView.center = self.view.center;
    portaitImageView.contentMode = UIViewContentModeScaleAspectFill;
    //No.1
    //开始写代码，把图片切成圆的并加上红色边框。
    portaitImageView.layer.masksToBounds = YES;
    portaitImageView.layer.cornerRadius = portaitImageView.frame.size.width/2;
    portaitImageView.layer.borderColor = [UIColor redColor].CGColor;
    portaitImageView.layer.borderWidth = 1;
    
    
    //end_code
    [self.view addSubview:portaitImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end