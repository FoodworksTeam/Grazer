//
//  myTableViewCell.m
//  Grazer
//
//  Created by Michael Dee on 6/25/13.
//  Copyright (c) 2013 Michael Dee. All rights reserved.
//

#import "myTableViewCell.h"

@implementation myTableViewCell

@synthesize foodLabel, ratingLabel, nameLabel, timeLabel, priceLabel, distanceLabel, foodImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
