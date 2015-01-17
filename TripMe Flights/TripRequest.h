//
//  TripRequest.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

@import Foundation;

@interface TripRequest : NSObject

@property NSString *origin;
@property double budget;
@property NSDate *startDate;
@property NSDate *returnDate;

@end
