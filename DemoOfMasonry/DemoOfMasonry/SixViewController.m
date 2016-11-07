//
//  SixViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/7.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "SixViewController.h"

@interface SixViewController ()

@end

@implementation SixViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *viewOne = [[UIView alloc]init];
    viewOne.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:viewOne];
    
    UIView *viewTwo = [[UIView alloc]init];
    viewTwo.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:viewTwo];
    
    UIView *viewThree = [[UIView alloc]init];
    viewThree.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:viewThree];
    
    [viewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(200);
    }];
    
    [viewTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(viewOne).with.offset(30);
        make.left.equalTo(viewOne).with.offset(30);
        make.right.equalTo(viewOne).with.offset(-30);
        make.bottom.equalTo(viewOne).with.offset(-30);
    }];
    
    [viewThree mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(viewTwo).with.insets(UIEdgeInsetsMake(30, 30, 30, 30));
    }];
    
    //  make.top.equalTo(viewOne).with.offset(30);
    //  顶部.相等(目标view).连接词.偏移
    
    //  make.edges.equalTo(viewTwo).with.insets(UIEdgeInsetsMake(30, 30, 30, 30));
    //  边.相等(目标view).连接词.收缩(top,left,bottom,right);
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
