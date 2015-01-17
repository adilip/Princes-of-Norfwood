//
//  HomeViewController.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *origin;
@property (strong, nonatomic) IBOutlet UITextField *budget;
- (IBAction)go:(UIButton *)sender;

@end
