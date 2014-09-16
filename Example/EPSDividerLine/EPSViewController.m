//
//  EPSViewController.m
//  EPSDividerLine
//
//  Created by Peter Stuart on 09/16/2014.
//  Copyright (c) 2014 Peter Stuart. All rights reserved.
//

#import "EPSViewController.h"

#import <EPSDividerLine/EPSDividerLine.h>

@interface EPSViewController ()

@end

@implementation EPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *firstLabel = [UILabel new];
    firstLabel.text = @"First Label";
    firstLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:firstLabel];
    
    EPSDividerLine *dividerLine = [EPSDividerLine new];
    [self.view addSubview:dividerLine];
    
    UILabel *secondLabel = [UILabel new];
    secondLabel.text = @"Second Label";
    secondLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:secondLabel];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(firstLabel, dividerLine, secondLabel);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[firstLabel]-|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[dividerLine]|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-[secondLabel]-|" options:0 metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[firstLabel]-[dividerLine]-[secondLabel]" options:0 metrics:nil views:views]];
}

@end
