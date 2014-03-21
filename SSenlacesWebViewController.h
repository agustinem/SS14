//
//  SSenlacesWebViewController.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 16/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSenlacesWebViewController.h"
#import "SSenlacesViewController.h"

@interface SSenlacesWebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webViewEnlaces;
@property (strong, nonatomic) NSString *urlstr;
@end
