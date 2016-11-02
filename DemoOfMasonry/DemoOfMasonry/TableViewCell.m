//
//  TableViewCell.m
//  DemoOfMasonry
//
//  Created by 蔡成汉 on 2016/11/2.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "TableViewCell.h"
#import <Masonry/Masonry.h>

@interface TableViewCell ()

@property (nonatomic , strong) UILabel *label;

@end

@implementation TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self initialCell];
    }
    return self;
}

-(void)initialCell
{
    _label = [[UILabel alloc]init];
    [self.contentView addSubview:_label];
    
}

-(void)layoutSubviews
{
    [_label mas_makeConstraints:^(MASConstraintMaker *make) {
        
    }];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
