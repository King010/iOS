//
//  ViewController.m
//  hello
//
//  Created by renren-mac on 6/12/17.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.textField setValue:@4 forKey:@"limit"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setOutput:(id)sender {
    self.userOutput.text=self.userInput.text;
}


@end
