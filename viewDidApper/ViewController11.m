//
//  ViewController11.m
//  viewDidApper
//
//  Created by fenglh on 15/9/14.
//  Copyright (c) 2015年 fenglh. All rights reserved.
//

#import "ViewController11.h"

@interface ViewController11 ()

@end

@implementation ViewController11

- (void)viewDidLoad {
    [super viewDidLoad];
     NSLog(@"ViewController11：viewDidLoad #############");
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewController11：viewDidAppear ---------");
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewController11：viewWillAppear ---------");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"ViewController11：viewWillDisappear ---------");
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"ViewController11：viewDidDisappear ---------");
}


@end
