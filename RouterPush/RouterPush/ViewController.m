//
//  ViewController.m
//  RouterPush
//
//  Created by hu on 16/10/8.
//  Copyright © 2016年 hu. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [[UIColor purpleColor] colorWithAlphaComponent:0.5];
//    NSLog(@"这个是新建的在分支中创建的........");
    self.title = @"这个时期";
    UILabel * label = [[UILabel alloc] init];
    label.frame = CGRectMake(30, 300, 300, 30);
    label.backgroundColor = [UIColor whiteColor];
    label.text = @"master  master";

    [self.view addSubview:label];
    
    NSLog(@"22:31 这里我没有修改");
    NSLog(@"这个地方我想修改不要了。。。。。");
    NSLog(@"这里是自分子，可以删除的");
    NSLog(@"不用涮了");

}

@end
