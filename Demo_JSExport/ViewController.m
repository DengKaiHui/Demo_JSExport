//
//  ViewController.m
//  Test_JSCore
//
//  Created by 纠结伦 on 2017/2/16.
//  Copyright © 2017年 纠结伦. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import "MypointExports.h"
#import "MyPoint.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 获取JS代码字符串
    NSString *geometryScript = [self loadJSFromBundle];
//
//    // 创建JSContext，并执行JS代码
    JSContext *context = [[JSContext alloc] init];
    [context evaluateScript:geometryScript];
    
    // 创建2个点
    MyPoint *point1 = [[MyPoint alloc] initWithX:0.0 Y:0.0];
    MyPoint *point2 = [[MyPoint alloc] initWithX:1.0 Y:1.0];
    
    // 调用JS方法，求得两点间的距离
    JSValue *function = context[@"euclideanDistance"];
    JSValue *result = [function callWithArguments:@[point1, point2]];
    NSLog(@"result = %f",[result toDouble]);
    
    // 调用JS方法，求得两点间的中点
//    context[@"MyPoint"] = [MyPoint class];
//    
//    JSValue *function2 = context[@"midpoint"];
//    JSValue *jsResult = [function2 callWithArguments:@[point1, point2]];
//    MyPoint *midpoint = [jsResult toObject];
//    NSLog(@"midpoint = %@",midpoint);

}

// 从 Bundle 中加载JS代码
- (NSString *)loadJSFromBundle {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"geometryScript.js" ofType:nil];
    NSString *jsStr = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    return jsStr;
}

// 计算阶乘
- (void)factorial {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"factorial.js" ofType:nil];
    NSString *factorialScript = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    JSContext *context = [[JSContext alloc] init];
    [context evaluateScript:factorialScript];
    
    JSValue *function = context[@"factorial"];
    JSValue *result = [function callWithArguments:@[@5]];
    
    NSLog(@"factorial(5) = %d", [result toInt32]);
    
    
}



@end
