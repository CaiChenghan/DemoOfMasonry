//
//  FourViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/4.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *viewOne = [[UIView alloc]init];
    viewOne.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:viewOne];
    
    UIView *viewTwo = [[UIView alloc]init];
    viewTwo.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:viewTwo];
    
    [viewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuide);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.height.equalTo(@100);
    }];
    
    [viewTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(viewOne.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.height.mas_equalTo(100);
    }];
    
    //  make.height.equalTo(@100);
    //  高度.相等（@100） --equalTo后面接对象
    
    //  make.height.mas_equalTo(100);
    //  高度.相等（100）  --mas_equalTo后面直接接数组
    
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
