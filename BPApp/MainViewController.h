//
//  MainViewController.h
//  BPApp
//
//  Created by Anthony Dagati on 10/28/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *systolicPressure;
@property (weak, nonatomic) IBOutlet UITextField *diastolicPressure;

@property (weak, nonatomic) IBOutlet UITextField *howAreYouFeeling;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

