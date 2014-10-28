//
//  MainViewController.h
//  BPApp
//
//  Created by Anthony Dagati on 10/28/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"


@interface MainViewController : UIViewController
{
    sqlite3 *db;
    
}

@property (weak, nonatomic) IBOutlet UITextField *systolicPressure;
@property (weak, nonatomic) IBOutlet UITextField *diastolicPressure;

@property (weak, nonatomic) IBOutlet UITextField *howAreYouFeeling;
- (IBAction)saveEntry:(id)sender;

-(NSString *) filePath;
-(void)openDB;

//field names: date, systolic, diastolic, comments
-(void)createTable:(NSString *)tableName
        withField1:(NSString *) field1
        withField2:(NSString *) field2
        withField3:(NSString *) field3
        withField4:(NSString *) field4;
















































@end

