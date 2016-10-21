//
//  ViewController.m
//  ZBButten
//
//  Created by 周宾 on 16/10/20.
//  Copyright © 2016年 周宾. All rights reserved.
//

#import "ViewController.h"
#import "ZBButten.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZBButten *butten = [[ZBButten alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    butten.Timer = 3;
    butten.backgroundColor = [UIColor redColor];
    [self.view addSubview:butten];
    [butten addTarget:self action:@selector(btnclic) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)btnclic
{
    NSLog(@"ceshi");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
