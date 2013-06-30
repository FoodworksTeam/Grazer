//
//  GrazerViewController.h
//  Grazer
//
//  Created by Michael Dee on 6/21/13.
//  Copyright (c) 2013 Michael Dee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface GrazerViewController : UIViewController
<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
}
@property (nonatomic, strong) NSArray *offerings; // It is an array of arrays

@end
