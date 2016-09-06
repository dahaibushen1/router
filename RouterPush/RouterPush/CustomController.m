//
//  CustomController.m
//  RouterPush
//
//  Created by hu on 16/9/6.
//  Copyright © 2016年 hu. All rights reserved.
//

#import "CustomController.h"

@implementation CustomController

-(void)viewDidLoad{

    [super viewDidLoad];
    self.title = @"custom";
    self.view.backgroundColor = [UIColor redColor];
    
}

-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear: animated];
    //视图即将出现时候调用
    NSLog(@"look here animated");
}

@end
