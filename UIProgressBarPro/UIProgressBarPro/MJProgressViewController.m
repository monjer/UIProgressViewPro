//
//  MJProgressViewController.m
//  UIProgressBarPro
//
//  Created by manjun.han on 13-4-2.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJProgressViewController.h"
#import "MJProgressView.h"

@interface MJProgressViewController ()

@property (weak, nonatomic) IBOutlet MJProgressView *cusProgressBar;

@property (nonatomic) NSTimer *progressTimer ;


- (void)activeProgressBar ;

@end

@implementation MJProgressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:@"progressbartrack.png"];
    
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(0.0, 4.0, 0.0, 4.0)] ;
    
    self.cusProgressBar.trackImage = image ;
    
    image = [UIImage imageNamed:@"progressbar.png"];
    
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(0.0, 3.0, 0.0, 3.0)] ;
    
    self.cusProgressBar.progressImage = image ;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startProgress:(id)sender
{
    if (!self.progressTimer) {
        self.progressTimer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                              target:self
                                                            selector:@selector(activeProgressBar)
                                                            userInfo:nil
                                                             repeats:YES] ;
    }
    self.cusProgressBar.progress = 0.0 ;
    [self.progressTimer fire] ;
}
- (IBAction)stopProgress:(id)sender
{
    [self.progressTimer invalidate] ;
    self.progressTimer = nil ;
}

- (void)activeProgressBar
{
    if (self.cusProgressBar.progress >= 1.0) {
        self.cusProgressBar.progress = 0.0 ;
    }
    [self.cusProgressBar setProgress:self.cusProgressBar.progress+0.05 animated:YES] ;
}

@end
