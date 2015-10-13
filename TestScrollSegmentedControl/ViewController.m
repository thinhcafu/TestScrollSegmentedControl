//
//  ViewController.m
//  TestScrollSegmentedControl
//
//  Created by ECEP2010 on 10/13/15.
//  Copyright © 2015 ECEP. All rights reserved.
//

#import "ViewController.h"
#import "JournalTableViewCell.h"

@interface ViewController ()
{
    NSMutableArray *journals;
    NSArray *arrimages;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    journals = [[NSMutableArray alloc] init];
    arrimages = [[NSArray alloc] init];
    
    self.tableView.delegate = self;
    self.tableView.dataSource =self;
    
    self.scrollView.contentSize = CGSizeMake(self.segmentedControl.frame.size.width -1, self.segmentedControl.frame.size.height -1);
    self.scrollView.showsHorizontalScrollIndicator = YES;
    self.segmentedControl.selectedSegmentIndex = 0;
    NSLog(@"abc");
    [self fillJournals];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ViewDidChage:(id)sender {
    [self fillJournals];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"Cell";
    JournalTableViewCell *cell = (JournalTableViewCell *)[tableView dequeueReusableCellWithIdentifier: cellIdentifier forIndexPath:indexPath];
    
    NSString *strTest = [journals objectAtIndex:indexPath.row];
    NSLog(@"string test: %@",strTest);
    
    cell.labelTitle.text = [journals objectAtIndex:indexPath.row];
    NSLog(@"aaaa: %@",[journals objectAtIndex:indexPath.row]);
    
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    imageView.image = [self imageForSegmentAtIndex:self.segmentedControl.selectedSegmentIndex];
    NSString *strContent =  @"Content of segment has ";
    cell.labelContent.text =[strContent stringByAppendingString:[journals objectAtIndex:indexPath.row]];
    
    return  cell;
}

- (UIImage *)imageForSegmentAtIndex:(NSUInteger)segment{
    
    switch (segment) {
        case 0:
            return [UIImage imageNamed:@"img1.jpg"];
            break;
        case 1:
            return [UIImage imageNamed:@"img2.jpg"];
            break;
        case 2:
            return [UIImage imageNamed:@"img3.jpeg"];
            break;
        case 3:
            return [UIImage imageNamed:@"img4.jpeg"];
            break;
        case 4:
            return [UIImage imageNamed:@"img5.jpg"];
            break;
        case 5:
            return [UIImage imageNamed:@"img6.jpg"];
            break;
    }
    return nil;
    
}

- (void)fillJournals{
    
    [journals removeAllObjects];
    
    NSString *segmentName = [self.segmentedControl titleForSegmentAtIndex:self.segmentedControl.selectedSegmentIndex];
    
    NSMutableArray *arrJournals = [[NSMutableArray alloc] init];
    NSArray *arrImages = [[NSArray alloc] init];
    arrimages = arrImages;
    
    arrImages = @[@"img1.jpg",@"img2.jpg",@"jpg3.jpeg",@"img4.jpeg",@"img5.jpg",@"img6.jpg"];
    [arrJournals addObject: [NSString stringWithFormat:@"Title is %@",segmentName]];
    
    journals = arrJournals;
    
}

@end
