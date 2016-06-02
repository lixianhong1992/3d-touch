//
//  DetailViewController.m
//  3D-TouchDemo
//
//  Created by AnXinDai on 15/10/13.
//  Copyright © 2015年 君安信（北京）科技有限公司. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    [self createUI];
    
}

-(void)createUI
{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    label.backgroundColor=[UIColor cyanColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.text=_idStr;
    [self.view addSubview:label];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(100, 200, 100, 30);
    button.backgroundColor=[UIColor cyanColor];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)buttonClick:(UIButton *)button
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
