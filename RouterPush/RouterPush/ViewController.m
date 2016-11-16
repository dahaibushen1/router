//
//  ViewController.m
//  RouterPush
//
//  Created by hu on 16/10/8.
//  Copyright © 2016年 hu. All rights reserved.
//

#import "ViewController.h"
#import "CustomController.h"
#import "SSKeychain.h"

#define kSSToolkitTestsServiceName  @"这里是服务内容"
#define kSSToolkitTestsAccountName @"这里是帐号名字"
#define kSSToolkitTestsPassword  @"这里是帐号密码"

@interface ViewController ()

@property (nonatomic,strong)UILabel *nameLabel;

@property (nonatomic,strong)UILabel *passwordLabel;

@property (nonatomic,strong)UIButton *button;

@property (nonatomic,strong)UITextField *textfield;

@property (nonatomic,assign)BOOL isfirst;

@end

@implementation ViewController

-(UILabel *)nameLabel{

    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.frame = CGRectMake(20, 200, 120, 30);
        _nameLabel.textAlignment = NSTextAlignmentLeft;
        _nameLabel.layer.borderColor = [UIColor grayColor].CGColor;
        _nameLabel.layer.borderWidth = 1;
        _nameLabel.text = @"111";
    }
    return _nameLabel;
}

-(UILabel *)passwordLabel{
    
    if (!_passwordLabel) {
        _passwordLabel = [[UILabel alloc] init];
        _passwordLabel.frame = CGRectMake(20, 260, 120, 30);
        _passwordLabel.textAlignment = NSTextAlignmentLeft;
        _passwordLabel.layer.borderColor = [UIColor grayColor].CGColor;
        _passwordLabel.layer.borderWidth = 1;
        _passwordLabel.text = @"222";
    }
    return _passwordLabel;
}
-(UIButton *)button{

    if (!_button) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-30, 400, 60, 40)];
        [_button setTitle:@"登录" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttclick:) forControlEvents:UIControlEventTouchUpInside];
        _button.backgroundColor = [UIColor blueColor];
    }
    return _button;
}

-(UITextField*)textfield{

    if (!_textfield) {
        _textfield = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 120, 30)];
        _textfield.layer.borderColor = [UIColor grayColor].CGColor;
        _textfield.layer.borderWidth = 1;
    }
    return _textfield;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.view addSubview:self.nameLabel];
//    [self.view addSubview:self.passwordLabel];
//    [self.view addSubview:self.button];
//    [self.view addSubview:self.textfield];

    NSLog(@"这是我提交的第一个步骤");
    
}

-(void)keyChain{

    if (!self.isfirst) {
        [SSKeychain setPassword:kSSToolkitTestsPassword forService:kSSToolkitTestsServiceName account:kSSToolkitTestsAccountName];
        NSString *password = [SSKeychain passwordForService:kSSToolkitTestsServiceName account:kSSToolkitTestsAccountName];
        self.passwordLabel.text = password;
        
        NSArray *accounts = [SSKeychain allAccounts];
        
        accounts = [SSKeychain accountsForService:kSSToolkitTestsServiceName];
        //\U8fd9\U91cc\U662f\U5e10\U53f7\U540d\U5b57
        
        BOOL issucced = [SSKeychain deletePasswordForService:kSSToolkitTestsServiceName account:kSSToolkitTestsAccountName];
        //如何获取固定的用户名称呢
        NSLog(@"look here --: %@",[[accounts lastObject] objectForKey:@"acct"]);
    }else{
        NSString *password = [SSKeychain passwordForService:kSSToolkitTestsServiceName account:kSSToolkitTestsAccountName];
        self.passwordLabel.text = password;
        
    }
    self.isfirst = YES;
}

//-(void)buttclick:(UIButton *)butt{
//    CustomController *customvc = [[CustomController alloc] init];
//    [self.navigationController pushViewController:customvc animated:YES];
//    [UIDevice currentDevice];
//}

@end
