//
//  pageView.m
//  Wholesome
//
//  Created by Wholesome on 4/11/11.
//  Copyright 2011 WholesomeZine LLC. All rights reserved.
//

#import "pageView.h"



@implementation pageView

@synthesize point;
@synthesize fishy;



- (void)dealloc{
    
    [point release];
    [fishy release];
    [super dealloc];
    
}

@end

