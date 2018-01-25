//
//  Person.h
//  KVO／KVC
//
//  Created by renren-mac on 2018/1/5.
//  Copyright © 2018年 renren-mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Account;
@interface Person : NSObject
{
    @private
    int _age;
}

@property(nonatomic,copy)NSString*                          name;
@property(nonatomic,retain)Account*                     account;

- (void)showMessage;
@end
