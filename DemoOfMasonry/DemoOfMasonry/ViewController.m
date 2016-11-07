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
#import "FiveViewController.h"
#import "SixViewController.h"
#import "SevenViewController.h"

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
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyTableViewCell"];
    cell.backgroundColor = [UIColor magentaColor];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
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
    else if (indexPath.row == 4)
    {
        FiveViewController *viewController = [[FiveViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES
         ];
    }
    else if (indexPath.row == 5)
    {
        SixViewController *viewController = [[SixViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else if (indexPath.row == 6)
    {
        SevenViewController *viewController = [[SevenViewController alloc]init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
