//
//  SecondViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/3.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuide);
        make.left.equalTo(self.view.mas_left);
        make.width.equalTo(self.view.mas_width).with.multipliedBy(0.5);
        make.height.equalTo(view.mas_width).with.multipliedBy(0.5);
    }];
    
    // make.top.equalTo(self.mas_topLayoutGuide)
    // 顶部.相等.顶部导航（navigationBar）的底部边缘
    
    // make.width.equalTo(self.view.mas_width).with.multipliedBy(0.5);
    // 宽度.相等.（目标宽度）.链接.比例（比例值） -- with为连接词，可不使用
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

-(void)dealloc
{
    
}

@end
