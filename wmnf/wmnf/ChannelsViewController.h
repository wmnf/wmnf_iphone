//
//  ChannelsViewController.h
//  wmnf
//
//  Created by Matthew Cowley on 11/2/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChannelsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    UITableView *channelsTableView;
    NSMutableArray *contentsList;
}
@property (nonatomic, retain) IBOutlet UITableView *channelsTableView;
@property (nonatomic, retain) NSMutableArray *contentsList;

@end
