//
//  ViewController.h
//  hello
//
//  Created by renren-mac on 6/12/17.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *userOutput;
@property (weak, nonatomic) IBOutlet UITextField *userInput;
- (IBAction)setOutput:(id)sender;

//- (IBAction)switchChanged:(UISwitch *)sender;

@end

