//
//  ViewController.m
//  TEST1
//
//  Created by gengxiaoen on 2017/11/6.
//  Copyright © 2017年 gengxiaoen. All rights reserved.
//

#import "ViewController.h"
#import "AAAViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 80);
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(actionButton) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
}

- (void)actionButton{
    AAAViewController *aaaViewVC = [[AAAViewController alloc]init];
    [self presentViewController:aaaViewVC animated:YES completion:nil] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
