//
//  MJProgressView.m
//  UIProgressBarPro
//
//  Created by manjun.han on 13-4-2.
//  Copyright (c) 2013年 mj. All rights reserved.
//

#import "MJProgressView.h"

@implementation MJProgressView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    // TrackImage    
    CGFloat trackImageHeight = self.trackImage.size.height ;
    
    CGFloat trackImageY = (rect.size.height - trackImageHeight)/2.0 ;
    
    CGRect trackRect = CGRectMake(0.0, trackImageY, rect.size.width, trackImageHeight) ;
    
    [self.trackImage drawInRect:trackRect] ;
    
    // ProgressImage
    
    CGFloat progressImageHeight = self.progressImage.size.height ;
    
    CGFloat progressImageY = (rect.size.height - progressImageHeight)/2.0 ;
    
    CGFloat progressImageWidth = self.progress*rect.size.width ;
    
    CGRect progressImageRect = CGRectMake(0.0, progressImageY, progressImageWidth, progressImageHeight) ;
    
    [self.progressImage drawInRect:progressImageRect] ;


}

@end
