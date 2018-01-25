//
//  main.m
//  KVO／KVC
//
//  Created by renren-mac on 2018/1/5.
//  Copyright © 2018年 renren-mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person1=[[Person alloc]init];
        [person1 setValue:@"alex" forKey:@"name"];
        [person1 setValue:@28 forKey:@"age"];
        
        [person1 showMessage];
        
        Account* account1=[[Account alloc]init];
        person1.account=account1;
        [person1 setValue:@10000000.0 forKeyPath:@"account.balance"];
        NSLog(@"person1.balance is %.2f",[[person1 valueForKeyPath:@"account.balance"]floatValue]);
        
    }
    return 0;
}
