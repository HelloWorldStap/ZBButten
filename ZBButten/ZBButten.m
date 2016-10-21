//
//  ZBButten.m
//  ZBButten
//
//  Created by 周宾 on 16/10/20.
//  Copyright © 2016年 周宾. All rights reserved.
//

#import "ZBButten.h"
@interface ZBButten()
@property(nonatomic,strong)NSTimer *zbtimer;
@property(nonatomic,assign)NSInteger oldtimer;
@end
@implementation ZBButten
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setsouce];
        [self AddTimerFormesage];
    }
    return self;
}
-(void)setsouce
{
    _Timer = 60;
    _oldtimer = _Timer;
}
-(void)AddTimerFormesage
{
    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(ChangeTimer) userInfo:nil repeats:YES];
    self.zbtimer = timer;
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    [self.zbtimer setFireDate:[NSDate distantFuture]];
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
}
-(void)setTimer:(NSInteger)Timer
{
    _Timer = Timer;
    _oldtimer=_Timer;
}
/**
 定时器的每一秒的跳动
 */
-(void)ChangeTimer
{
    if (_Timer>0) {
        
        [self setTitle:[NSString stringWithFormat:@"%ld",_Timer] forState:UIControlStateNormal];
        _Timer = _Timer-1;

    }else
    {
        [self setTitle:@"获取验证码" forState:UIControlStateNormal];
        [self.zbtimer setFireDate:[NSDate distantFuture]];
        self.userInteractionEnabled = YES;
        _Timer = _oldtimer;
    }
    
}
- (void)sendAction:(SEL)action to:(nullable id)target forEvent:(nullable UIEvent *)event
{
    [super sendAction:action to:target forEvent:event];
    [self setTitle:[NSString stringWithFormat:@"%ld",_Timer] forState:UIControlStateNormal];
    [self.zbtimer setFireDate:[NSDate distantPast]];
    self.userInteractionEnabled = NO;


}

//-(void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
//{
//    [super addTarget:target action:action forControlEvents:controlEvents];
//    }
@end
