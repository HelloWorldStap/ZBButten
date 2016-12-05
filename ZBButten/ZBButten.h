//
//  ZBButten.h
//  ZBButten
//
//  Created by 周宾 on 16/10/20.
//  Copyright © 2016年 周宾. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBButten : UIButton
/**
 专用于定时器的butten默认是60秒
 */
@property(nonatomic,assign)NSInteger Timer;
/**
 初试的文字
 */
@property(nonatomic,strong)NSString *normaltext;
/**
 设置启动后的文字
 */
-(void)setbuttenfrontTitle:(NSString *)frontstr backtitle:(NSString *)backstr;

@end
