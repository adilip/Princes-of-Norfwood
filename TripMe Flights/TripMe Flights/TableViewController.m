//
//  TableViewController.m
//  TripMe Flights
//
//  Created by Arjun Dilip Kumar on 1/17/15.
//  Copyright (c) 2015 Princes of Norfwood. All rights reserved.
//

#import "TableViewController.h"
#import "Trip.h"
#import "TripManager.h"
#import "TripCommunicator.h"
#import "DetailCell.h"

@interface TableViewController () <TripManagerDelegate> {
    NSArray *_trips;
    TripManager *_manager;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _manager = [[TripManager alloc] init];
    _manager.communicator = [[TripCommunicator alloc] init];
    _manager.communicator.delegate = _manager;
    _manager.delegate = self;
    [self startFetchingTrips];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)startFetchingTrips
{
    NSString *tripRequest = @"http://tripmeflights.herokuapp.com/search?airport=DTW&startDate=2015-02-01&endDate=2015-02-10&price=300";
    NSLog (@"%s", "Test");
    NSURL *tripPush = [NSURL URLWithString:tripRequest];
    [_manager fetchTripsAtRequest:tripPush];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return _trips.count;
}

- (void)didReceiveTrips:(NSArray *)trips
{
    _trips = trips;
    [self.tableView reloadData];
}

- (void)fetchingTripsFailedWithError:(NSError *)error
{
    NSLog(@"Error %@; %@", error, [error localizedDescription]);
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    /*
    Trip *trip = _trips[indexPath.row];
    [cell.cityLabel setText:trip.city];
    [cell.priceLabel setText:trip.price];
    [cell.airportLabel setText:trip.airport];
     */
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
