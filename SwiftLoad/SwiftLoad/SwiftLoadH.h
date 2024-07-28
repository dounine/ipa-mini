//
//  SwiftLoadH.h
//  SwiftLoad
//
//  Created by lake on 2024/7/28.
//
#import <Foundation/Foundation.h>

@protocol NSSwiftLoadProtocol <NSObject>
@optional
+ (void)swiftLoad;
+ (void)swiftInitialize;
@end

#define SWIFT_LOAD_INITIALIZE(className) \
@interface className(ext_swift_hook) \
@end \
\
@implementation className(ext_swift_hook)\
+ (void)load {if ([[self class] respondsToSelector:@selector(swiftLoad)]) {[[self class] swiftLoad];}}\
+ (void)initialize {if ([[self class] respondsToSelector:@selector(swiftInitialize)]) {[[self class] swiftInitialize];}} \
@end
