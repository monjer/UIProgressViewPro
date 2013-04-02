//
//  MJViewController.m
//  UIProgressBarPro
//
//  Created by manjun.han on 13-4-2.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJViewController.h"
#import "MJProgressView.h"

@interface MJViewController ()

@property (weak, nonatomic) IBOutlet UIProgressView *progressA;
@property (weak, nonatomic) IBOutlet UIProgressView *progressB;
@property (weak, nonatomic) IBOutlet UIProgressView *progressC;
@property (weak, nonatomic) IBOutlet UIProgressView *progressD;
@property (weak, nonatomic) IBOutlet UIProgressView *progressE;

@property (weak, nonatomic) IBOutlet UIProgressView *progressF;
@property (weak, nonatomic) IBOutlet UIProgressView *progressG;
@property (weak, nonatomic) IBOutlet UIProgressView *progressH;
@property (weak, nonatomic) IBOutlet UIProgressView *progressI;
@property (weak, nonatomic) IBOutlet UIProgressView *progressJ;

@property (nonatomic) NSTimer *progressTimer ;

@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated] ;
    
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
    self.progressA.progress = 0.0 ;
    self.progressB.progress = 0.0 ;
    self.progressC.progress = 0.0 ;
    self.progressD.progress = 0.0 ;
    self.progressE.progress = 0.0 ;
    self.progressF.progress = 0.0 ;
    self.progressG.progress = 0.0 ;
    self.progressH.progress = 0.0 ;
    self.progressI.progress = 0.0 ;
    self.progressJ.progress = 0.0 ;

    [self.progressTimer fire] ;
}
- (IBAction)stopProgress:(id)sender
{
    [self.progressTimer invalidate] ;
    self.progressTimer = nil ;

}

- (void)activeProgressBar
{
    if (self.progressA.progress >= 1.0) {
        self.progressA.progress = 0.0 ;
        self.progressB.progress = 0.0 ;
        self.progressC.progress = 0.0 ;
        self.progressD.progress = 0.0 ;
        self.progressE.progress = 0.0 ;
        self.progressF.progress = 0.0 ;
        self.progressG.progress = 0.0 ;
        self.progressH.progress = 0.0 ;
        self.progressI.progress = 0.0 ;
        self.progressJ.progress = 0.0 ;
    }
    [self.progressA setProgress:self.progressA.progress+0.05 animated:YES] ;
    [self.progressB setProgress:self.progressB.progress+0.05 animated:YES] ;
    [self.progressC setProgress:self.progressC.progress+0.05 animated:YES] ;
    [self.progressD setProgress:self.progressD.progress+0.05 animated:YES] ;
    [self.progressE setProgress:self.progressE.progress+0.05 animated:YES] ;
    [self.progressF setProgress:self.progressF.progress+0.05 animated:YES] ;
    [self.progressG setProgress:self.progressG.progress+0.05 animated:YES] ;
    [self.progressH setProgress:self.progressH.progress+0.05 animated:YES] ;
    [self.progressI setProgress:self.progressI.progress+0.05 animated:YES] ;
    [self.progressJ setProgress:self.progressJ.progress+0.05 animated:YES] ;

}
@end
