//
//  SevenViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/7.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "SevenViewController.h"

@interface SevenViewController ()

@end

@implementation SevenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *viewOne = [[UIView alloc]init];
    viewOne.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:viewOne];
    
    [viewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(200, 200));
        make.center.equalTo(self.view);
    }];
    
    //  make.size.mas_equalTo(CGSizeMake(200, 200));
    //  尺寸.相等.（尺寸）
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
