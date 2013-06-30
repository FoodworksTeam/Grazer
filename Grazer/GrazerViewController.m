//
//  GrazerViewController.m
//  Grazer
//
//  Created by Michael Dee on 6/21/13.
//  Copyright (c) 2013 Michael Dee. All rights reserved.
//

#import "GrazerViewController.h"
#import <CoreLocation/CoreLocation.h>
#import "myTableViewCell.h"
#import <UIKit/UIKit.h>


@interface GrazerViewController () <UITableViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet myTableViewCell *myTableViewCell;
@property (weak, nonatomic) IBOutlet UIButton *eatButton;
@property (weak, nonatomic) IBOutlet UIButton *cookButton;
@property (weak, nonatomic) IBOutlet UIButton *profileButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *filterButton;





@end


@implementation GrazerViewController



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //If the sender is the right type class and we get the index path, do stuff on the inside.
    if([sender isKindOfClass:[myTableViewCell class]])  {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        if (indexPath) {
            
        }
    //prepare segue.destinationController to display based on information
    // about my data structure corresponding to indexPath.row in indexPath.section
    }
}



//How many sections are in our table.       Tableviewdatasource function
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//How many rows in each section         Tableviewdatasource function
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.offerings count];
    //return [myDataModel count];  Once I have a data model.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Set the cell identifier and cell attributes of our custom cell, and return the cell to the table view.  This function
    // Iterates through the number of cells in the section.         Tableviewdatasource function
    myTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell" forIndexPath:indexPath];
    cell.foodLabel.text = [NSString stringWithFormat:@"Hobo Cheesbeburger"];
    cell.nameLabel.text = [NSString stringWithFormat:@"Homeless"];
    
    
    //This is how it should look once I make my models.  indexpath.section is set up above.  Item is the number that changes.
    
    // cell.foodLabel.text = [myDataModel[indexpath.item] stringwithFoodInfo]  Going to be reading through an array.
    // cell.ratingLabel.text = [myDataModel[indexpath.item] stringwithRatingInfo]
    // cell.nameLabel.text = [myDataModel[indexpath.item] stringwithNameInfo]
    // cell.timeLabel.text = [myDataModel[indexpath.item] stringwithTimeInfo]
    // cell.priceLabel.text = [myDataModel[indexpath.item] stringwithPriceInfo]
    // cell.distanceLabel.text = [myDataModel[indexpath.item] stringwithDistanceInfo]
    // cell.foodImage.image = [myDataModel[indexpath.item] stringwithImageInfo]
    
    return cell;
}


//When delegate message comes from the MKMapView to View Controller
//Zoom in on the user. Globe view is useless

- (void)viewDidLoad
{
    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




//Overriding the initializer for CLLocation to set accuracy to the best
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        //Create location manager object
    locationManager = [[CLLocationManager alloc] init];
        
        //set delegate
    [locationManager setDelegate:self];
        
        //Set accuracy for the locmanager object.
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
        
    return self;
}


@end
