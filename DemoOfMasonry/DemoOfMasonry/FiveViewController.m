//
//  FiveViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/7.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "FiveViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *viewOne = [[UIView alloc]init];
    viewOne.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:viewOne];
    
    UIView *viewTwo = [[UIView alloc]init];
    viewTwo.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:viewTwo];
    
    [viewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(viewOne.mas_width);
    }];
    
    [viewTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(viewOne);
        make.centerY.equalTo(viewOne);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    
    //  make.center.equalTo(self.view);
    //  中心.相等(目标view)
    
    //  make.centerX.equalTo(viewOne);
    //  中心X轴.相等(目标view)
    
    //  make.centerY.equalTo(viewOne);
    //  中心Y轴.相等(目标view)
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
