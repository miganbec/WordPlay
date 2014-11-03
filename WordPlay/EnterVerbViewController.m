//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by miganbec on 03/11/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterThingViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EnterThingViewController *enterThingViewController = [segue destinationViewController];
    enterThingViewController.name = self.name;
    enterThingViewController.adjective = self.adjective;
    enterThingViewController.verb = self.verbTextField.text;
}

- (BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.verbTextField.text isEqualToString:@""]) {
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
