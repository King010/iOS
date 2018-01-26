//
//  ViewController.m
//  ThreePoints
//
//  Created by renren-mac on 2017/12/27.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
@interface ViewController ()

@end
 
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestView *view = [[TestView alloc]initWithFrame:self.view.frame];
    self.view = view;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
