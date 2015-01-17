//
//  TripCommunicatorDelegate.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TripCommunicatorDelegate
- (void) receivedTripsJSON: (NSData *)objectNotation;
- (void) fetchingTripsFailedWithError: (NSError *)error;

@end
