//
//  ViewController1.m
//  viewDidApper
//
//  Created by fenglh on 15/9/14.
//  Copyright (c) 2015年 fenglh. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController11.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    NSLog(@"ViewController1：viewDidLoad #############");
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    //1.创建按钮1
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setTitle:@"pushViewController" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [pushButton setFrame:CGRectMake(100, 200, 200, 40)];
    [pushButton setBackgroundColor:[UIColor blueColor]];
    [pushButton addTarget:self action:@selector(pushViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}


- (void)pushViewController:(id)sender
{
    NSLog(@"pushViewController 按钮被点击了");
    ViewController11 *vc1 = [[ViewController11 alloc] init];
    [self.navigationController pushViewController:vc1 animated:YES];
}


- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewController1：viewDidAppear ---------");
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewController1：viewWillAppear ---------");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"ViewController1：viewWillDisappear ---------");
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"ViewController1：viewDidDisappear ---------");
}

@end
