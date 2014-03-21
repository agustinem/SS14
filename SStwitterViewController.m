//
//  SStwitterViewController.m
//  SemanaSantaApp
//
//  Created by Jose Maria on 16/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import "SStwitterViewController.h"

@interface SStwitterViewController ()

@end

@implementation SStwitterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    	    [super viewDidLoad];
    	    NSString *fullURL = @"https://twitter.com/JoseMGVilachao";
        NSURL *url = [NSURL URLWithString:fullURL];
    	    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    	    [self.webViewTwitter loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
