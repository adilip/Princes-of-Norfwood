//
//  DetailCell.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *airportLabel;

@end
