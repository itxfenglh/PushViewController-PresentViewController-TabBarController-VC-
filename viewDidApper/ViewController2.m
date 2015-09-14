//
//  ViewController2.m
//  viewDidApper
//
//  Created by fenglh on 15/9/14.
//  Copyright (c) 2015年 fenglh. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController22.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ViewController2：viewDidLoad #############");
    //2.创建按钮2
    UIButton *presentButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [presentButton setTitle:@"presentViewController" forState:UIControlStateNormal];
    [presentButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [presentButton setFrame:CGRectMake(100, 200, 200, 40)];
    [presentButton setBackgroundColor:[UIColor blueColor]];
    [presentButton addTarget:self action:@selector(presentViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
}

- (void)presentViewController:(id)sender
{
    ViewController22 *vc22 = [[ViewController22 alloc] init];
    [self presentViewController:vc22 animated:YES completion:nil];
    NSLog(@"presentViewController 按钮被点击了");
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewController2：viewDidAppear ---------");
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewController2：viewWillAppear ---------");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"ViewController2：viewWillDisappear ---------");
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"ViewController2：viewDidDisappear ---------");
}


@end
