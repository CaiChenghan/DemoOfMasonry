//
//  ThirdViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/3.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
        make.width.equalTo(self.view).with.multipliedBy(0.5);
        make.height.equalTo(viewOne.mas_width).with.multipliedBy(0.5);
    }];
    
    [viewTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(viewOne.mas_top);
        make.left.equalTo(viewOne.mas_right);
        make.right.equalTo(self.view.mas_right);
        make.height.equalTo(viewOne.mas_height);
    }];
    
    //  make.height.equalTo(viewOne.mas_width).with.multipliedBy(0.5);
    //  高度.相等（参考view.宽度）.连接词.比例（0.5）；
    
    //  make.height.equalTo(viewOne.mas_height);
    //  高度.相等.参考view.高度)
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
