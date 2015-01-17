//
//  TripCommunicator.m
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import "TripCommunicator.h"
#import "TripCommunicatorDelegate.h"

@implementation TripCommunicator


- (void)searchTrips:(NSURL *)tripRequest
{
    NSLog(@"%@", tripRequest);
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:tripRequest] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            [self.delegate fetchingTripsFailedWithError:error];
        } else {
            [self.delegate receivedTripsJSON:data];
        }
    }];
}


@end
