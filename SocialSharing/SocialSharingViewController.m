//
//  SocialSharingViewController.m
//  SocialSharing
//
//  Created by shu ghosh on 6/2/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "SocialSharingViewController.h"
#import <Social/Social.h>

@interface SocialSharingViewController ()



@end

@implementation SocialSharingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postToTwitter:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
   //“isAvailableForServiceType” method to verify if the Twitter service is accessible. One reason why users can’t access the Twitter service is that they haven’t logged on the service in the iOS.
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
   
   //If the service is accessible, we then create an instance of the SLComposeViewController for the Twitter service.
   //set the initial text in the composer
        
        [tweetSheet setInitialText:@"I love you!"];

    //invoke presentViewController:tweetSheet to bring up the Twitter composer
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }

}

- (IBAction)postToFacebook:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:@"bla bla bla"];
        [controller setInitialText:@"Posting from my iPhone app"];
        [controller addURL:[NSURL URLWithString:@"http://www.espn.com"]];
        [controller addImage:[UIImage imageNamed:@"socialsharing-facebook-image.jpg"]];
        [self presentViewController:controller animated:YES completion:Nil];
    }

}


@end
