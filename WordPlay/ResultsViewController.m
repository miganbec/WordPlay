//
//  ResultsViewController.m
//  WordPlay
//
//  Created by miganbec on 29/10/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;
@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *madLibString = [NSString stringWithFormat:@"Nombre: %@ Adjetivo: %@ Verbo: %@ Cosa: %@", self.name, self.adjective, self.verb, self.thing];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:madLibString];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.name]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.adjective]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.verb]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.thing]];
    self.resultsTextView.attributedText = attributedString;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
