//
//  ViewController.m
//  BigClickArea
//
//  Created by 李献红 on 17/6/2.
//  Copyright © 2017年 李献红. All rights reserved.
//

#import "ViewController.h"
#import "BigButton.h"
#import "BigTextField.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //虽然size是 10 * 10，但是可以看到点击区域明显变大
    BigButton *bigBtn = [[BigButton alloc]initWithFrame:CGRectMake(100, 100, 10, 10)];
    bigBtn.backgroundColor = [UIColor redColor];
    [bigBtn addTarget:self action:@selector(bigBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bigBtn];
    
    BigTextField *bigTextField = [[BigTextField alloc]initWithFrame:CGRectMake(15, 200, 200, 10)];
    bigTextField.borderStyle = UITextBorderStyleLine;
    bigTextField.backgroundColor = [UIColor greenColor];
    bigTextField.placeholder = @"我是小的输入框";
    [self.view addSubview:bigTextField];
    
}




- (void)bigBtnClick {

    
    NSLog(@"------------");
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
