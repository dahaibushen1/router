//
//  ViewController.m
//  RouterPush
//
//  Created by hu on 16/9/6.
//  Copyright © 2016年 hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    NSLog(@"这个是新建的在分支中创建的........");
    self.title = @"这个时期";
    UILabel * label = [[UILabel alloc] init];
    label.text = @"我又回到子分支了.....";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
