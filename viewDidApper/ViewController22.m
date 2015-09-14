//
//  ViewController22.m
//  viewDidApper
//
//  Created by fenglh on 15/9/14.
//  Copyright (c) 2015年 fenglh. All rights reserved.
//

#import "ViewController22.h"

@interface ViewController22 ()

@end

@implementation ViewController22

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ViewController22：viewDidLoad #############");
    self.view.backgroundColor = [UIColor greenColor];
    //2.创建按钮2
    UIButton *dismissButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [dismissButton setTitle:@"dismiss" forState:UIControlStateNormal];
    [dismissButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [dismissButton setFrame:CGRectMake(100, 200, 200, 40)];
    [dismissButton setBackgroundColor:[UIColor blueColor]];
    [dismissButton addTarget:self action:@selector(dismissButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissButton];
}

- (void)dismissButton:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewController22：viewDidAppear ---------");
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewController22：viewWillAppear ---------");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"ViewController22：viewWillDisappear ---------");
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"ViewController22：viewDidDisappear ---------");
}


@end
