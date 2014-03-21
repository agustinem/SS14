//
//  SSenlacesWebViewController.m
//  SemanaSantaApp
//
//  Created by Jose Maria on 16/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import "SSenlacesWebViewController.h"
#import "SSenlacesViewController.h"

@interface SSenlacesWebViewController ()

@end

@implementation SSenlacesWebViewController

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
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:self.urlstr];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webViewEnlaces loadRequest:requestObj];
    UIView * viewPubli =[[[NSBundle mainBundle] loadNibNamed:@"ViewPublicidad" owner:self options:nil] objectAtIndex:0];
    float alturaPubli = [[UIScreen mainScreen] bounds].size.height -  (self.tabBarController.tabBar.frame.size.height + viewPubli.frame.size.height);
    viewPubli.frame = CGRectMake(0, alturaPubli, viewPubli.frame.size.width, viewPubli.frame.size.height);
    [self.view addSubview: viewPubli];
    self.webViewEnlaces.scrollView.contentOffset = CGPointMake(0, 100);

    
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
