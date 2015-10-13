//
//  JournalTableViewCell.m
//  TestScrollSegmentedControl
//
//  Created by ECEP2010 on 10/13/15.
//  Copyright © 2015 ECEP. All rights reserved.
//

#import "JournalTableViewCell.h"

@implementation JournalTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // init code
    }
    return  self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
