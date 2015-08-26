//
//  ViewController.m
//  Dialog
//
//  Created by 罗西 on 8/24/15.
//  Copyright (c) 2015 com.demo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *bgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [bgView setImage:[UIImage imageNamed:@"bg"]];
    [self.view addSubview:bgView];
    
#define HEIGHT_OF_DIALOG 150
    
    UIView *dialogView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-HEIGHT_OF_DIALOG, self.view.frame.size.width, HEIGHT_OF_DIALOG)];
    [dialogView setBackgroundColor:[UIColor colorWithWhite:0.5 alpha:0.5]];
    [self.view addSubview:dialogView];
    
    UIButton *checkApplyBtn = [[UIButton alloc]initWithFrame:CGRectMake(15, 35, self.view.frame.size.width/2-30, 45)];
    [checkApplyBtn setTitle:@"查看申请" forState:UIControlStateNormal];
    [checkApplyBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    checkApplyBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    checkApplyBtn.backgroundColor = [UIColor whiteColor];
    checkApplyBtn.layer.cornerRadius = 5.f;
    [dialogView addSubview:checkApplyBtn];
    
    UIButton *checkOrderBtn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2+15, 35, self.view.frame.size.width/2-30, 45)];
    [checkOrderBtn setTitle:@"查看订单" forState:UIControlStateNormal];
    [checkOrderBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    checkOrderBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    checkOrderBtn.backgroundColor = [UIColor yellowColor];
    checkOrderBtn.layer.cornerRadius = 5.f;
    [dialogView addSubview:checkOrderBtn];
    
    UIButton *announcePriceBtn = [[UIButton alloc]initWithFrame:CGRectMake(15, 35+45+10, self.view.frame.size.width-30, 45)];
    [announcePriceBtn setTitle:@"发布价格" forState:UIControlStateNormal];
    [announcePriceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    announcePriceBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    announcePriceBtn.backgroundColor = [UIColor blackColor];
    announcePriceBtn.layer.cornerRadius = 5.f;
    [dialogView addSubview:announcePriceBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
