//
//  ViewController.m
//  WordPlay
//
//  Created by miganbec on 29/10/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToViewController:(UIStoryboardSegue *)sender {
    NSLog(@"Unwind to view controller");
}

@end
