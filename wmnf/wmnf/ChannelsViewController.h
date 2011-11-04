//
//  ChannelsViewController.h
//  wmnf
//
//  Created by Matthew Cowley on 11/2/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NowPlayingViewController.h";
#import "AppDelegate.h"

@interface ChannelsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    UITableView *channelsTableView;
    NSMutableArray *contentsList;
    NowPlayingViewController *nowPlayingViewController;
}
@property (nonatomic, retain) IBOutlet UITableView *channelsTableView;
@property (nonatomic, retain) NSMutableArray *contentsList;
@property (nonatomic, retain) IBOutlet NowPlayingViewController *nowPlayingViewController;

@end
