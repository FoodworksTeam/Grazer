//
//  GrazerViewController.m
//  Grazer
//
//  Created by Michael Dee on 6/21/13.
//  Copyright (c) 2013 Michael Dee. All rights reserved.
//

#import "GrazerViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface GrazerViewController ()


@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIButton *profileButton;
@property (weak, nonatomic) IBOutlet UILabel *grazerLabel;
@property (weak, nonatomic) IBOutlet MKMapView *localMap;
@property (weak, nonatomic) IBOutlet UIButton *eatButton;
@property (weak, nonatomic) IBOutlet UIButton *cookButton;
@property (weak, nonatomic) IBOutlet UIButton *rateButton;


@end


@implementation GrazerViewController

//When delegate message comes from the MKMapView to View Controller
//Zoom in on the user. Globe view is useless
- (void)mapView:(MKMapView *)mapView
didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    
    //ADD SOMETHING HERE TO CREATE ARRAY OF PINS
    
    //How big should the window be? Is 250, 250 big enough or too big?
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [self.localMap setRegion:region animated:YES];
    
}

- (void)viewDidLoad
{
    [_localMap setShowsUserLocation:YES];
	// Do any additional setup after loading the view, typically from a nib.
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
    if (self) {
        //Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        //set delegate
        [locationManager setDelegate:self];
        
        //Set accuracy for the locmanager object.
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //tell manager to start looking for the location
    }
    return self;
}


@end
