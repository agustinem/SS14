//
//  SSenlacesViewController.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 14/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSenlacesWebViewController.h"

@interface SSenlacesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *webViewTiempo;
@property (weak, nonatomic) IBOutlet UIButton *webViewRadio;

@property (weak, nonatomic) IBOutlet UIButton *webViewCecop;

- (IBAction)playRadio:(id)sender;


@end
