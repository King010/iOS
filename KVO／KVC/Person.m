//
//  Person.m
//  KVO／KVC
//
//  Created by renren-mac on 2018/1/5.
//  Copyright © 2018年 renren-mac. All rights reserved.
//

#import "Person.h"

@implementation Person
#pragma 公共方法
- (void)showMessage{
    NSLog(@"name=%@,age=%d",_name,_age);
}

-(void)setAccount:(Account *)account{
    _account=account;
    //添加对Account的监听
    [self.account addObserver:self forKeyPath:@"balance" options:NSKeyValueObservingOptionNew context:nil];
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if([keyPath isEqualToString:@"balance"]){//这里只处理balance属性
        NSLog(@"keyPath=%@,object=%@,newValue=%.2f,context=%@",keyPath,object,[[change objectForKey:@"new"] floatValue],context);
    }
}
/*
 kvo
 */

//- (void)

@end
