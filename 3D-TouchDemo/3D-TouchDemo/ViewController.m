//
//  ViewController.m
//  3D-TouchDemo
//
//  Created by AnXinDai on 15/10/13.
//  Copyright © 2015年 君安信（北京）科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUI];
    
    
    
}

-(void)createUI
{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    label.backgroundColor=[UIColor cyanColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.text=@"这是个label";
    [self.view addSubview:label];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(100, 200, 100, 30);
    button.backgroundColor=[UIColor cyanColor];
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}

-(void)buttonClick:(UIButton *)button
{
    //NSLog(@"点击按钮了");
    DetailViewController *detail=[[DetailViewController alloc]init];
    
    detail.idStr=@"123";
    
    [self presentViewController:detail animated:YES completion:^{
        
    }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
