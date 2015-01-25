//
//  TripBuilder.m
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import "TripBuilder.h"
#import "Trip.h"

@implementation TripBuilder

+ (NSArray *)tripsFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *trips = [[NSMutableArray alloc] init];
    
    NSArray *results = [parsedObject valueForKey:@"results"];
    NSLog(@"Count %lu", (unsigned long)results.count);
    
    // Possible errors below
    
    for (NSDictionary *tripDic in results) {
        Trip *trip = [[Trip alloc] init];
        
        for (NSString *key in tripDic) {
            if ([trip respondsToSelector:NSSelectorFromString(key)]) {
                [trip setValue:[tripDic valueForKey:key] forKey:key];
            }
        }
        
        
        [trips addObject:trip];
    }
    
    return trips;
}
@end

