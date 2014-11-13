//
//  ViewController.h
//  VideoPlayer
//
//  Created by Albert Saucedo on 11/11/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIWebView *webView;
    IBOutlet UIButton *btnPlay2;
    IBOutlet UIButton *btnPlay1;
    IBOutlet UIButton *btnPlay3;
    
}
- (IBAction)onPlayButtonPressed:(UIButton *)sender;
- (IBAction)onPlayButtonPressed2:(UIButton *)sender;
- (IBAction)onPlayButtonPressed3:(UIButton *)sender;


@end

