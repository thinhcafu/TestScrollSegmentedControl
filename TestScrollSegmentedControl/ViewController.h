//
//  ViewController.h
//  TestScrollSegmentedControl
//
//  Created by ECEP2010 on 10/13/15.
//  Copyright © 2015 ECEP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UITableView *tableView;



- (IBAction)ViewDidChage:(id)sender;



@end

