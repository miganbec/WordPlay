//
//  EnterThingViewController.m
//  WordPlay
//
//  Created by miganbec on 03/11/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "EnterThingViewController.h"
#import "ResultsViewController.h"

@interface EnterThingViewController ()
@property (weak, nonatomic) IBOutlet UITextField *thingTextField;

@end

@implementation EnterThingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *resultsViewController = [segue destinationViewController];
    resultsViewController.name = self.name;
    resultsViewController.adjective = self.adjective;
    resultsViewController.verb = self.verb;
    resultsViewController.thing = self.thingTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.thingTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
