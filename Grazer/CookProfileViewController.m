//
//  CookProfileViewController.m
//  Grazer
//
//  Created by Michael Dee on 6/27/13.
//  Copyright (c) 2013 Michael Dee. All rights reserved.
//

#import "CookProfileViewController.h"

@interface CookProfileViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *cookImage;
@property (weak, nonatomic) IBOutlet UILabel *cookName;
@property (weak, nonatomic) IBOutlet UILabel *tagLine;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIImageView *profileFoodImage;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastCooked;
@property (weak, nonatomic) IBOutlet UILabel *longDescription;
@property (weak, nonatomic) IBOutlet UILabel *portionsLeft;
@property (weak, nonatomic) IBOutlet UIButton *orderButton;
@property (weak, nonatomic) IBOutlet UIButton *eatButton;
@property (weak, nonatomic) IBOutlet UIButton *cookButton;
@property (weak, nonatomic) IBOutlet UIButton *profileButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *messageButton;
@property (weak, nonatomic) IBOutlet UILabel *foodLabel;

@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderNumLabel;




@end

@implementation CookProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
