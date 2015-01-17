//
//  TripManagerDelegate.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import <Foundation/Foundation.h>

//@protocol TripManagerDelegate <NSObject>
@protocol TripManagerDelegate

- (void)didReceiveTrips:(NSArray *)trips;
- (void)fetchingTripsFailedWithError:(NSError *)error;
@end

