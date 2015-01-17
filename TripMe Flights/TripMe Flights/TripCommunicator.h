//
//  TripCommunicator.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TripCommunicatorDelegate;
@interface TripCommunicator : NSObject
@property (weak, nonatomic) id<TripCommunicatorDelegate> delegate;
- (void)searchTrips:(NSURL *)tripRequest;

@end
