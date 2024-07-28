//
//  swift.m
//  IpaMiniFramework
//
//  Created by lake on 2024/7/28.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <IpaMiniFramework/IpaMiniFramework-Swift.h>
#import "swift.h"
SWIFT_LOAD_INITIALIZE(FloatBtn)


@implementation FF

-(void)show{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"按钮标题" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    button.frame = CGRectMake(100, 100, 100, 50); // 设置按钮的位置和大小
    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside]; // 指定按钮点击事件的处理方法
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
        [window addSubview:button];
//    });
}

@end
