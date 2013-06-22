//
//  GrazerViewController.h
//  Grazer
//
//  Created by Michael Dee on 6/21/13.
//  Copyright (c) 2013 Michael Dee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface GrazerViewController : UIViewController
<CLLocationManagerDelegate, MKMapViewDelegate>
{
    CLLocationManager *locationManager;
}

@end
