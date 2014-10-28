//
//  ViewController.m
//  BPApp
//
//  Created by Anthony Dagati on 10/28/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "MainViewController.h"
//#import "FlipsideViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

//file path to db
-(NSString *)filePath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingString:@"bp.sql"];
}

-(void)openDB {
    if (sqlite3_open([[self filePath] UTF8String], &db) != SQLITE_OK) {
        sqlite3_close(db);
        NSAssert(0, @"Database failed to open");
    } else {
        NSLog(@"Database opened.");
    }
}

- (void)viewDidLoad {
    [self openDB];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

//-(void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
  //  [self dismissViewControllerAnimated:YES completion:nil];
//}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
  //  if ([[segue identifier] isEqualToString:@"showAlternate"]) {
//        [[segue destinationViewController] setDelegate:self];
  //  }
//}

- (IBAction)saveEntry:(id)sender {
    
}

@end
