//
//  ViewController.m
//  VideoPlayer
//
//  Created by Albert Saucedo on 11/11/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self ChangePlayButtonState];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

- (IBAction)onPlayButtonPressed:(UIButton *)sender {

    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Test" withExtension:@"mov"];

    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];

}

- (IBAction)onPlayButtonPressed2:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.youtube.com/watch?v=SSrCaX8ttuw"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (IBAction)onPlayButtonPressed3:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.youtube.com/watch?v=wvzfOyW0ZMo"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

#pragma mark - Helpers

- (void)ChangePlayButtonState {
    UIImage *playImage = [UIImage imageNamed:@"play"];

    [btnPlay1 setTitle:@"" forState:UIControlStateNormal];
    [btnPlay2 setTitle:@"" forState:UIControlStateNormal];
    [btnPlay3 setTitle:@"" forState:UIControlStateNormal];

    [btnPlay1 setTitle:@"1" forState:UIControlStateHighlighted];

    [btnPlay1 setBounds:CGRectMake(310, 294, 44, 44)];
    [btnPlay1 setBackgroundImage:playImage forState:UIControlStateNormal];
    [btnPlay2 setBackgroundImage:playImage forState:UIControlStateNormal];
    [btnPlay3 setBackgroundImage:playImage forState:UIControlStateNormal];
    
}
@end
