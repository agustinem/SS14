//
//  SSenlacesViewController.m
//  SemanaSantaApp
//
//  Created by Jose Maria on 14/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import "SSenlacesViewController.h"
#import "SSenlacesWebViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface SSenlacesViewController ()
{
    AVPlayer *objAVPlayer;
}
@end

@implementation SSenlacesViewController

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
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SSenlacesWebViewController *webController = [[SSenlacesWebViewController alloc] init];
    
    if ([[segue identifier] isEqualToString:@"tiempo"]) {
        NSString *urlstr=@"http://espanol.weather.com/weather/10day-SPXX0074:1:SP";
        webController = [segue destinationViewController];
        webController.urlstr = urlstr;

    }
}

- (IBAction)playRadio:(id)sender {
    UIButton *button = (UIButton *)sender;
    if(objAVPlayer==nil)
    {
        NSURL *url =[NSURL URLWithString:@"http://canalsurradio.rtva.stream.flumotion.com/rtva/canalsurradio_master.mp3.m3u"];
        objAVPlayer = [[AVPlayer alloc] initWithURL:url];
        [objAVPlayer play];
        button.selected = YES;
    }else{
        objAVPlayer = nil;
                button.selected = NO;
    }
    [self performSelector:@selector(doHighlight:) withObject:sender afterDelay:0];

}


- (void)doHighlight:(UIButton*)b {
     [b setHighlighted:NO];
    if (objAVPlayer) {
         [b setHighlighted:YES];
    }
}

@end
