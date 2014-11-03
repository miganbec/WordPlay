//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by miganbec on 29/10/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterVerbViewController *enterVerbViewController = [segue destinationViewController];
    enterVerbViewController.name = self.name;
    enterVerbViewController.adjective = self.adjectiveTextField.text;
    
}

- (BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
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
