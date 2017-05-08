//
//  MainViewController.m
//  Animation
//
//  Created by 李自杨 on 17/4/10.
//  Copyright © 2017年 View. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UIImageView *animationImage;

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"动画";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //动画视图
    _animationImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 200)];
    [self.view addSubview:_animationImage];
    _animationImage.backgroundColor = [UIColor orangeColor];
    _animationImage.image = [UIImage imageNamed:@"gun001"];
    
    //开始动画
    [self setAnimationImageArray];
    
}

-(NSMutableArray *)dataArray{
    
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;

}


//设置动画资源数组
-(void)setAnimationImageArray{
    
    for (int i = 1; i <= 40; i++) {
        
        [self.dataArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"gun%03zd",i]]];
    }
    
    //设置动画数组
    [_animationImage setAnimationImages:_dataArray];
    //设置播放次数
//    [_animationImage setAnimationRepeatCount:];
    //设置播放时间
    [_animationImage setAnimationDuration:_dataArray.count * 0.1];
    //开始播放动画
    [_animationImage startAnimating];
    
    
//    //拼接图片的名称
//    NSString *name = [NSString stringWithFormat:@"%@%03zd",imagename,(i + 1)];
//    //获取图片的路径
//    NSString *imagepath = [[NSBundle mainBundle]pathForResource:name ofType:@"png"];
//    //根据图片的路径加载图片
//    UIImage *image = [UIImage imageWithContentsOfFile:imagepath];
//    //把图片保存到数组中
//    [arrM addObject:image];
    

}



@end
