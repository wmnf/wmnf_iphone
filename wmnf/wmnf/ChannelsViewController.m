//
//  ChannelsViewController.m
//  wmnf
//
//  Created by Matthew Cowley on 11/2/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ChannelsViewController.h"

@implementation ChannelsViewController
@synthesize channelsTableView;
@synthesize contentsList;
@synthesize nowPlayingViewController;

- (void)dealloc
{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    [channelsTableView release], channelsTableView = nil;
    [contentsList release], contentsList = nil;
	
    [super dealloc];
	
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"WMNF 88.5FM", @"HD2 Bulls Radio", @"HD3 The Source", @"HD4 Music and HCC", nil];
    [self setContentsList:array];
    [array release], array = nil;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    [super viewWillAppear:animated];
	
    [[self channelsTableView] reloadData];
	
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    NSInteger rows = [[self contentsList] count];
	
    NSLog(@"rows is: %d", rows);
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
    return rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    NSString *contentForThisRow = [[self contentsList] objectAtIndex:[indexPath row]];
	
    static NSString *CellIdentifier = @"CellIdentifier";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        // Do anything that should be the same on EACH cell here.  Fonts, colors, etc.
    }
	
    // Do anything that COULD be different on each cell here.  Text, images, etc.
    [[cell textLabel] setText:contentForThisRow];
	
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@">>> Entering %s <<<", __PRETTY_FUNCTION__);
	
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch ([indexPath row]) {
        case 0: {NSLog(@"HD1"); break;}
        case 1: {NSLog(@"HD2"); break;}
        case 2: {NSLog(@"HD3"); break;}
        case 3: {NSLog(@"HD4"); break;}
    }
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate.nowPlayingViewController changeChannel:[indexPath row]];
//    [nowPlayingViewController changeChannel:[indexPath row]];

    
    NSLog(@"<<< Leaving %s >>>", __PRETTY_FUNCTION__);
}


@end
