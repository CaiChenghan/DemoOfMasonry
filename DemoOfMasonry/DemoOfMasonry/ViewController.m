//
//  ViewController.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/10/31.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"

// 弱引用
#define WeakSelf __weak typeof(self) weakSelf = self;

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

/**
 tableView
 */
@property (nonatomic , strong) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Masonry使用";
    
//    self.edgesForExtendedLayout = UIRectEdgeNone;
//    self.extendedLayoutIncludesOpaqueBars = NO;
//    self.modalPresentationCapturesStatusBarAppearance = NO;
    
    _myTableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    [self.view addSubview:_myTableView];
    
    [_myTableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"MyTableViewCell"];
    
    [_myTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    
//    UIView *superview = self.view;
//    
//    UIView *view1 = [[UIView alloc] init];
//    view1.translatesAutoresizingMaskIntoConstraints = NO;
//    view1.backgroundColor = [UIColor orangeColor];
//    [superview addSubview:view1];
//    
//    UIView *view2 = [[UIView alloc]init];
//    view2.backgroundColor = [UIColor redColor];
//    [superview addSubview:view2];
//    
//    UIView *view3 = [[UIView alloc]init];
//    view3.backgroundColor = [UIColor yellowColor];
//    [superview addSubview:view3];
//    
//    UIView *view4 = [[UIView alloc]init];
//    view4.backgroundColor = [UIColor blueColor];
//    [superview addSubview:view4];
//    
//    UIView *view5 = [[UIView alloc]init];
//    view5.backgroundColor = [UIColor purpleColor];
//    [superview addSubview:view5];
//    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.mas_topLayoutGuide);
//        make.left.equalTo(superview).with.offset(0);
//        make.width.equalTo(superview.mas_width).multipliedBy(0.5);
//        make.height.mas_equalTo(view1.mas_width);
//    }];
//    
//    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view1.mas_top);
//        make.left.equalTo(view1.mas_right);
//        make.right.equalTo(superview.mas_right);
//        make.height.equalTo(view2.mas_width).multipliedBy(0.5);
//    }];
//    
//    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view2.mas_bottom);
//        make.left.equalTo(view1.mas_right);
//        make.width.equalTo(superview.mas_width).multipliedBy(0.3);
//        make.bottom.equalTo(view1.mas_bottom);
//    }];
//    
//    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view3.mas_top);
//        make.left.equalTo(view3.mas_right);
//        make.right.equalTo(superview.mas_right);
//        make.height.equalTo(view3.mas_height).multipliedBy(0.5);
//    }];
//    
//    [view5 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view4.mas_bottom);
//        make.left.equalTo(view4.mas_left);
//        make.right.equalTo(view4.mas_right);
//        make.bottom.equalTo(view3.mas_bottom);
//    }];
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyTableViewCell"];
    cell.backgroundColor = [UIColor magentaColor];
    cell.textLabel.text = @"文本";
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0)
    {
        FirstViewController *viewController = [[FirstViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 1)
    {
        SecondViewController *viewController = [[SecondViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 2)
    {
        ThirdViewController *viewController = [[ThirdViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 3)
    {
        FourViewController *viewController = [[FourViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
