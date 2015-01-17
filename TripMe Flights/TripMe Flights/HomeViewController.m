//
//  HomeViewController.m
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import "HomeViewController.h"
#import "TripRequest.h"

@interface HomeViewController ()


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard {
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)go:(UIButton *)sender {
    NSString *tripRequest = @"http://tripme.ngrok.com/search?airport=";
    tripRequest = [NSString stringWithFormat:@"%@%@%s%@", tripRequest, self.origin.text, "&price=", self.budget.text];
    NSURL *tripPush = [NSURL URLWithString:tripRequest];
    [[UIApplication sharedApplication] openURL:tripPush];
    NSLog(@"%@", tripRequest);
}
@end
