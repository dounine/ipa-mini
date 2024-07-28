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
//SWIFT_LOAD_INITIALIZE(RootBtn)


@implementation FF
+(void)load{
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    [button setTitle:@"按钮" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor blueColor];
//    button.frame = CGRectMake(150, 400, 100, 50); // 设置按钮的位置和大小
//    button.constraints =
//    button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//    button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//    [button addTarget:self action:@selector(buttonBack) forControlEvents:UIControlEventTouchDown]; // 指定按钮点击事件的处理方法
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        FreeMoveButton *btn = [FreeMoveButtonBuilder getWithFrame:CGRectMake(0, 200, 60, 60)];
        [btn onTapWithTap:^{
            NSLog(@"点击了");
        }];
        UIWindow *window = [[UIApplication sharedApplication] keyWindow];
        [window addSubview:btn];
    });
}

-(void)buttonBack{
    NSLog(@"点击了");
}
@end
