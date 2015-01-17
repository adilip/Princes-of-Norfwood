//
//  TripManager.h
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TripManagerDelegate.h"
#import "TripCommunicatorDelegate.h"

@class TripCommunicator;

@interface TripManager : NSObject<TripCommunicatorDelegate>
@property (strong, nonatomic) TripCommunicator *communicator;
@property (weak, nonatomic) id<TripManagerDelegate> delegate;

- (void)fetchTripsAtRequest:(NSURL *)tripRequest;

@end
