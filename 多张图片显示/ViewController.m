//
//  ViewController.m
//  多张图片显示
//
//  Created by 苗建浩 on 2017/5/8.
//  Copyright © 2017年 苗建浩. All rights reserved.
//

#import "ViewController.h"
#import "ManyImageView.h"
#import "Header.h"
#define NumberRow 4 //  设置每行显示的图片数量
#define CollClearance 3 //  图片据上下两边的宽度
#define ImageWidthMargin 3  //    图片据左右两边的宽度

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"多张图片显示";
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSArray *imageArr = @[@"111",@"222",@"333",@"444",@"555",@"666"];
    int integer = (int)imageArr.count / NumberRow;  //整数
    int remainder = imageArr.count % NumberRow;//   余数
    if (remainder > 0) {
        remainder = 1;
    }
    double height = (((screenWidth - 12 - (3 * (NumberRow - 1))) / NumberRow) * (integer + remainder) + (integer + remainder) * 4);
    if (height > screenHight - NAVGATION_ADD_STATUS_HEIGHT) {
        height = screenHight - NAVGATION_ADD_STATUS_HEIGHT - 2 * CollClearance;
    }
    NSLog(@"(integer + remainder) = %d",(integer + remainder));
    ManyImageView *imageView = [ManyImageView initWithFrame:CGRectMake(0, NAVGATION_ADD_STATUS_HEIGHT + CollClearance, screenWidth , height) imageArr:imageArr numberRow:NumberRow widthClearance:ImageWidthMargin];
    imageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:imageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
