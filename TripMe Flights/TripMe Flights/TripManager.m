//
//  TripManager.m
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import "TripManager.h"
#import "TripBuilder.h"
#import "TripCommunicator.h"

@implementation TripManager
- (void)fetchTripsAtRequest:(NSURL *)tripRequest
{
    [self.communicator searchTrips:tripRequest];
}

#pragma mark - MeetupCommunicatorDelegate

- (void)receivedTripsJSON:(NSData *)objectNotation
{
    NSError *error = nil;
    NSArray *trips = [TripBuilder tripsFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingTripsFailedWithError:error];
        
    } else {
        [self.delegate didReceiveTrips:trips];
    }
}

- (void)fetchingTripsFailedWithError:(NSError *)error
{
    [self.delegate fetchingTripsFailedWithError:error];
}

@end
