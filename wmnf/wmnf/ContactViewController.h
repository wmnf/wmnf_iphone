//
//  ContactViewController.h
//  wmnf
//
//  Created by Matthew Cowley on 11/5/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactViewController : UIViewController {
    UIWebView *webView;
}
@property(nonatomic, retain) IBOutlet UIWebView *webView;

@end
