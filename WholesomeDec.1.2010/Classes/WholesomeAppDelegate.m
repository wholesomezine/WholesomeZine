//
//  WholesomeAppDelegate.m
//  Wholesome
//
//  Created by Wholesome on 3/25/10.
//  Copyright WholesomeZine LLC 2010. All rights reserved.
//

#import "WholesomeAppDelegate.h"


@implementation WholesomeAppDelegate
// SynthesizeProperties:
#pragma mark SynthesizeProperties:
@synthesize window;
@synthesize cubeNumber;
@synthesize cubeState;
@synthesize currentPage;
@synthesize nextPage;



//InitialSetup:
#pragma mark InitialSetup:

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    
	
	// StartOrientationNotifications:
#pragma mark StartOrientationNotifications:
	
	device = [UIDevice currentDevice];
	[device beginGeneratingDeviceOrientationNotifications];
	[[NSNotificationCenter defaultCenter]	addObserver:self
									selector:@selector(orientationChanged:)
									name:@"UIDeviceOrientationDidChangeNotification" 
									object:device];
    
    
    

	// SetUpTitleImagesArray:
	
#pragma mark SetUpTitleImagesArray:
	
	
	
	titleImages = [NSArray arrayWithObjects:@"zine.cover.title.image.png", @"mob.title.png", 
				   @"crud.title.png",@"merch.title.png", @"radio.title.png", nil];
	[titleImages retain];
	titleView.image = [UIImage imageNamed:[titleImages objectAtIndex:0]];
	
    pages = [NSArray arrayWithObjects:@"PageView", @"Page2View", nil];
    [pages retain];
	
    
    
    [cubeContentView insertSubview:[self loadPage:0] belowSubview:legfishButton];
    [cubeContent2View insertSubview:[self loadPage:1] belowSubview:legfishButton];

    
	
	self.cubeNumber = 1;
	zineCube.enabled = NO;
	zineLabelButton.enabled =NO;
	cubeControl.currentPage = 0;
    
    
    
#pragma mark SetUpCubeAnimationImagesArray:
    
    UIImage *i1 = [UIImage imageNamed:@"hi_CubeAni1.png"];
    UIImage *i2 = [UIImage imageNamed:@"hi_CubeAni2.png"];
    UIImage *i3 = [UIImage imageNamed:@"hi_CubeAni3.png"];
    UIImage *i4 = [UIImage imageNamed:@"hi_CubeAni4.png"];
    UIImage *i5 = [UIImage imageNamed:@"hi_CubeAni5.png"];
    UIImage *i6 = [UIImage imageNamed:@"hi_CubeAni6.png"];
    UIImage *i7 = [UIImage imageNamed:@"hi_CubeAni7.png"];
    UIImage *i8 = [UIImage imageNamed:@"hi_CubeAni8.png"];
    UIImage *i9 = [UIImage imageNamed:@"hi_CubeAni9.png"];
    UIImage *i10 = [UIImage imageNamed:@"hi_CubeAni10.png"];
    UIImage *i11 = [UIImage imageNamed:@"hi_CubeAni11.png"];
    UIImage *i12 = [UIImage imageNamed:@"hi_CubeAni12.png"];
    UIImage *i13 = [UIImage imageNamed:@"hi_CubeAni13.png"];
    UIImage *i14 = [UIImage imageNamed:@"hi_CubeAni14.png"];
    UIImage *i15 = [UIImage imageNamed:@"hi_CubeAni15.png"];
    UIImage *i16 = [UIImage imageNamed:@"hi_CubeAni16.png"];
    UIImage *i17 = [UIImage imageNamed:@"hi_CubeAni17.png"];
    UIImage *i18 = [UIImage imageNamed:@"hi_CubeAni18.png"];
    UIImage *i19 = [UIImage imageNamed:@"hi_CubeAni19.png"];
    UIImage *i20 = [UIImage imageNamed:@"hi_CubeAni20.png"];
    UIImage *i21 = [UIImage imageNamed:@"hi_CubeAni21.png"];
    UIImage *i22 = [UIImage imageNamed:@"hi_CubeAni22.png"];
    UIImage *i23 = [UIImage imageNamed:@"hi_CubeAni23.png"];
    UIImage *i24 = [UIImage imageNamed:@"hi_CubeAni24.png"];
    UIImage *i25 = [UIImage imageNamed:@"hi_CubeAni25.png"];
    UIImage *i26 = [UIImage imageNamed:@"hi_CubeAni26.png"];
    UIImage *i27 = [UIImage imageNamed:@"hi_CubeAni27.png"];
    UIImage *i28 = [UIImage imageNamed:@"hi_CubeAni28.png"];
    UIImage *i29 = [UIImage imageNamed:@"hi_CubeAni29.png"];
    
    
    
    
    cubeAnimationImages = [NSArray arrayWithObjects: i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, nil];
    
    cubeReverseAnimationImages = [NSArray arrayWithObjects: i29, i28, i27, i26, i25, i24, i23, i22,  i21, i20, i19, i18, i17, i16, i15, i14, i13, i12, i11, i10, i9, i8, i7, i6, i5, i4, i3, i2, i1, nil];
    
    [cubeAnimationImages retain];
    [cubeReverseAnimationImages retain];
    
    
    
    

#pragma mark InitialBigCubePositions:
	
	slidePositionRight = CGPointMake (kBigCubeCenterSPrOp);
	slidePositionCenter = CGPointMake (kBigCubeCenterSPcOp);
	slidePositionLeft = CGPointMake (kBigCubeCenterSPlOp);
	
	bigCube2View.hidden = NO;
	
	bigCubeView.alpha = kAlphaOpaque;
	bigCubeView.center = slidePositionCenter;
	
	bigCube2View.alpha = kAlphaTransparent;
	bigCube2View.center = slidePositionRight;
	
#pragma mark InitialContentViewPosition:
	
	slideContentPositionRight = CGPointMake (kCubeContentViewCenterSPrOp);
	slideContentPositionCenter = CGPointMake (kCubeContentViewCenterSPcOp);
	slideContentPositionLeft = CGPointMake (kCubeContentViewCenterSPlOp);
	
#pragma mark InitialTitleViewPosition:	
	
	slideTitlePositionRight = CGPointMake (kTitleViewCenterSPrOp );
	slideTitlePositionCenter = CGPointMake (kTitleViewCenterSPcOp);
	slideTitlePositionLeft = CGPointMake (kTitleViewCenterSPlOp);
	
	 
	
	[window makeKeyAndVisible];
	
	
}

// CubeActions:
#pragma mark InterfaceActions

-(id)loadPage:(int)pageNumber {
    

    
    NSArray *bundle = [[NSBundle mainBundle] loadNibNamed:[pages objectAtIndex:pageNumber]
                                                    owner:self options:nil];
    
    for (id object in bundle) {
        if ([object isKindOfClass:[pageView class]])
            currentPage = (pageView *)object;
    }   
    
   
    return currentPage;
        
        
       
        
        
}

-(IBAction) legfishWasTouched:(id)sender{ 
   
    bigCubeView.animationImages = cubeAnimationImages;
    bigCube2View.animationImages = cubeAnimationImages;
    bigCubeView.animationDuration = .35 ;  
    bigCube2View.animationDuration = .35;
    bigCubeView.animationRepeatCount = 1;
    bigCube2View.animationRepeatCount = 1;
    
    if (bigCubeView.center.x == slidePositionCenter.x) {[bigCubeView startAnimating];} 
    else {[bigCube2View startAnimating];}
    
     }
-(IBAction) legfish2WasTouched:(id)sender{
    
    bigCubeView.animationImages = cubeReverseAnimationImages;
    bigCube2View.animationImages = cubeReverseAnimationImages;
    bigCubeView.animationDuration = .35 ;  
    bigCube2View.animationDuration = .35;
    bigCubeView.animationRepeatCount = 1;
    bigCube2View.animationRepeatCount = 1;
    
    if (bigCubeView.center.x == slidePositionCenter.x) {[bigCubeView startAnimating];} 
    else {[bigCube2View startAnimating];}


}

-(IBAction) cubeWasTouched:(id)sender{
    
    
	
	
	switch ([sender tag]) {
		case 1:
			zineCube.enabled = NO;
			zineLabelButton.enabled =NO;
			cubeControl.currentPage = 0;
			break;
		case 2:
			mobCube.enabled = NO;
			mobLabelButton.enabled =NO;
			cubeControl.currentPage = 1;
			break;
		case 3:
			crudCube.enabled = NO;
			crudLabelButton.enabled =NO;
			cubeControl.currentPage = 2;
			break;
		case 4:
			merchCube.enabled = NO;
			merchLabelButton.enabled =NO;
			cubeControl.currentPage = 3;
			break;
		case 5:
			radioCube.enabled = NO;
			radioLabelButton.enabled =NO;
			cubeControl.currentPage = 4;
			break;
	}
	
	if ( [sender tag] >= self.cubeNumber ) { [self slide:0 :[sender tag]];}
	else { [self slide:1:[sender tag]];}
	
	switch (self.cubeNumber) {
		case 1:
			zineCube.enabled = YES;
			zineLabelButton.enabled =YES;
			break;
		case 2:
			mobCube.enabled = YES;
			mobLabelButton.enabled =YES;
			break;
		case 3:
			crudCube.enabled = YES;
			crudLabelButton.enabled =YES;
			break;
		case 4:
			merchCube.enabled = YES;
			merchLabelButton.enabled =YES;
			break;
		case 5:
			radioCube.enabled = YES;
			radioLabelButton.enabled =YES;
		break;}
	
	self.cubeNumber = [sender tag];
    
  
	
}

-(IBAction) cubeControlWasTouched:(id)sender{
	switch ([sender currentPage]) {
		case 0:
			zineCube.enabled = NO;
			zineLabelButton.enabled =NO;
			break;
		case 1:
			mobCube.enabled = NO;
			mobLabelButton.enabled =NO;
			break;
		case 2:
			crudCube.enabled = NO;
			crudLabelButton.enabled =NO;
			break;
		case 3:
			merchCube.enabled = NO;
			merchLabelButton.enabled =NO;
			break;
		case 4:
			radioCube.enabled = NO;
			radioLabelButton.enabled =NO;
			break;
	}
	
	if ( [sender currentPage] +1 >= self.cubeNumber ) { [self slide:0:[sender currentPage]+1];}
	else { [self slide:1:[sender currentPage]+1];}
	
	switch (self.cubeNumber) {
		case 1:
			zineCube.enabled = YES;
			zineLabelButton.enabled =YES;
			break;
		case 2:
			mobCube.enabled = YES;
			mobLabelButton.enabled =YES;
			break;
		case 3:
			crudCube.enabled = YES;
			crudLabelButton.enabled =YES;
			break;
		case 4:
			merchCube.enabled = YES;
			merchLabelButton.enabled =YES;
			break;
		case 5:
			radioCube.enabled = YES;
			radioLabelButton.enabled =YES;
		break;}
	
	self.cubeNumber = [sender currentPage] +1;
    
    
	
}



-(void) orientationChanged:(NSNotification *) notification{
	
	if (bigCubeView.center.x == slidePositionCenter.x) {cubeState= 1;} 
	if (bigCube2View.center.x == slidePositionCenter.x) {cubeState = 2;}
	
	
	if (device.orientation == UIDeviceOrientationPortrait) {[self spin:1];}
	if (device.orientation == UIDeviceOrientationLandscapeLeft) {[self spin:0];}
	if (device.orientation == UIDeviceOrientationLandscapeRight) {[self spin:2];}
	if (device.orientation == UIDeviceOrientationFaceUp) {}
	
}

// AnimationMethods:
#pragma mark AnimationMethods:

-(void)startIntro{}


-(void)slide:(int) direction:(int) nextCube{
	
	if (direction == 0) {
		
			if (bigCubeView.center.x == slidePositionCenter.x) {
        
                titleView.alpha = kAlphaOpaque;
                titleView.center =slideTitlePositionCenter;
                title2View.alpha =kAlphaTransparent;
                title2View.center = slideTitlePositionRight;
                
                title2View.image = [UIImage imageNamed:[titleImages objectAtIndex:nextCube - 1]];
                
                
                bigCubeView.alpha = kAlphaOpaque;
                bigCubeView.center = slidePositionCenter;
                
                cubeContentView.alpha = kAlphaOpaque;
                cubeContentView.center = slideContentPositionCenter;
                
                cubeContent2View.alpha = kAlphaTransparent;
                cubeContent2View.center = slideContentPositionRight;
                
                bigCube2View.alpha = kAlphaTransparent;
                bigCube2View.center = slidePositionRight;
                
                [UIView beginAnimations:@"SlideLeft" context:nil];
                [UIView setAnimationDuration:kAnimationDuration];
                [UIView setAnimationBeginsFromCurrentState:NO];
                
                titleView.alpha = kAlphaTransparent;
                titleView.center =slideTitlePositionLeft;
                title2View.alpha =kAlphaOpaque;
                title2View.center = slideTitlePositionCenter;
                
                bigCubeView.alpha = kAlphaTransparent;
                bigCubeView.center = slidePositionLeft;
                
                cubeContentView.alpha = kAlphaTransparent;
                cubeContentView.center = slideContentPositionLeft;
                
                cubeContent2View.alpha = kAlphaOpaque;
                cubeContent2View.center = slideContentPositionCenter;
                
                bigCube2View.alpha = kAlphaOpaque;
                bigCube2View.center = slidePositionCenter;
                
                
                [UIView commitAnimations];} 
			
            else {
                
                title2View.alpha = kAlphaOpaque;
                title2View.center =slideTitlePositionCenter;
                titleView.alpha =kAlphaTransparent;
                titleView.center = slideTitlePositionRight;
                titleView.image = [UIImage imageNamed:[titleImages objectAtIndex:nextCube-1]];
                
                bigCube2View.alpha = kAlphaOpaque;
                bigCube2View.center = slidePositionCenter;
                
                cubeContent2View.alpha = kAlphaOpaque;
                cubeContent2View.center = slideContentPositionCenter;
                
                cubeContentView.alpha = kAlphaTransparent;
                cubeContentView.center = slideContentPositionRight;
                
                bigCubeView.alpha = kAlphaTransparent;
                bigCubeView.center = slidePositionRight;
                
                [UIView beginAnimations:@"SlideLeft" context:nil];
                [UIView setAnimationDuration:kAnimationDuration];
                [UIView setAnimationBeginsFromCurrentState:NO];
                
                title2View.alpha = kAlphaTransparent;
                title2View.center =slideTitlePositionLeft;
                
                titleView.alpha =kAlphaOpaque;
                titleView.center = slideTitlePositionCenter;
                
                bigCube2View.alpha = kAlphaTransparent;
                bigCube2View.center = slidePositionLeft;
                
                cubeContent2View.alpha = kAlphaTransparent;
                cubeContent2View.center = slideContentPositionLeft;
                
                cubeContentView.alpha = kAlphaOpaque;
                cubeContentView.center = slideContentPositionCenter;
                
                bigCubeView.alpha = kAlphaOpaque;
                bigCubeView.center = slidePositionCenter;
                
                [UIView commitAnimations];} }
			
            else {			
            
                if (bigCube2View.center.x == slidePositionCenter.x) {
                
                title2View.alpha = kAlphaOpaque;
                title2View.center =slideTitlePositionCenter;
                
                titleView.alpha =kAlphaTransparent;
                titleView.center = slideTitlePositionLeft;
                titleView.image = [UIImage imageNamed:[titleImages objectAtIndex:nextCube - 1]];
                
                bigCube2View.center = slidePositionCenter;
                bigCube2View.alpha = kAlphaOpaque;
                
                cubeContent2View.alpha = kAlphaOpaque;
                cubeContent2View.center = slideContentPositionCenter;
                
                cubeContentView.alpha = kAlphaTransparent;
                cubeContentView.center = slideContentPositionLeft;
                
                bigCubeView.center = slidePositionLeft;
                bigCubeView.alpha = kAlphaTransparent;
                
                [UIView beginAnimations:@"SlideRight" context:nil];
                [UIView setAnimationDuration:kAnimationDuration];
                [UIView setAnimationBeginsFromCurrentState:NO];
                
                title2View.alpha = kAlphaTransparent;
                title2View.center =slideTitlePositionRight;
                titleView.alpha =kAlphaOpaque;
                titleView.center = slideTitlePositionCenter;
                
                bigCube2View.center = slidePositionRight;
                bigCube2View.alpha = kAlphaTransparent;
                
                cubeContent2View.alpha = kAlphaTransparent;
                cubeContent2View.center = slideContentPositionRight;
                
                cubeContentView.alpha = kAlphaOpaque;
                cubeContentView.center = slideContentPositionCenter;
                
                bigCubeView.center = slidePositionCenter;
                bigCubeView.alpha = kAlphaOpaque;
                
                [UIView commitAnimations]; } 
			
            else {
                
                titleView.alpha = kAlphaOpaque;
                titleView.center =slideTitlePositionCenter;
                title2View.alpha =kAlphaTransparent;
                title2View.center = slideTitlePositionLeft;
                title2View.image = [UIImage imageNamed:[titleImages objectAtIndex:nextCube-1]];
                
                bigCubeView.center = slidePositionCenter;
                bigCubeView.alpha = kAlphaOpaque;
                
                cubeContentView.alpha = kAlphaOpaque;
                cubeContentView.center = slideContentPositionCenter;
                
                cubeContent2View.alpha = kAlphaTransparent;
                cubeContent2View.center = slideContentPositionLeft;
                
                bigCube2View.center = slidePositionLeft;
                bigCube2View.alpha = kAlphaTransparent;
                
                [UIView beginAnimations:@"SlideRight" context:nil];
                [UIView setAnimationDuration:kAnimationDuration];
                [UIView setAnimationBeginsFromCurrentState:NO];
                
                titleView.alpha = kAlphaTransparent;
                titleView.center =slideTitlePositionRight;
                title2View.alpha =kAlphaOpaque;
                title2View.center = slideTitlePositionCenter;
                
                bigCubeView.center = slidePositionRight;
                bigCubeView.alpha = kAlphaTransparent;
                
                cubeContentView.alpha = kAlphaTransparent;
                cubeContentView.center = slideContentPositionRight;
                
                cubeContent2View.alpha = kAlphaOpaque;
                cubeContent2View.center = slideContentPositionCenter;
                
                bigCube2View.center = slidePositionCenter;
                bigCube2View.alpha = kAlphaOpaque;
                
                [UIView commitAnimations];} } 
                 }
           

-(void)rotateLeft{}
-(void)rotateRight{}
-(void)rotateUp{}
-(void)rotateDown{}

-(void)zoom{}
-(void)xtraZoom{}


-(void)spin:(int) direction{
	
	switch (direction) {
			
#pragma mark SpinLLO:
		case 0:
		{ //spinRight LeftLanscapeOrientation
			[window bringSubviewToFront:zineCube];
			[window bringSubviewToFront:mobCube];
			[window bringSubviewToFront:crudCube];
			[window bringSubviewToFront:merchCube];
			[window bringSubviewToFront:radioCube];
			
			// anchorPointRef1a
#pragma mark anchorPointRef1a
			
			CGPoint mCubeAnchorPoint = CGPointMake (kBigCubeAnchorPoint); 
			CGPoint mTitleAnchorPoint = CGPointMake (kTitleViewAnchorPoint);
			
			CGPoint mPageControlCenter = CGPointMake (kPageControlCenterOll);
			
			CGPoint mTitleCenter = CGPointMake (kTitleViewCenterSPcOll);
			CGPoint mTitleCenterRight = CGPointMake (kTitleViewCenterSPrOll);
			
			CGPoint mContentCenter = CGPointMake (kCubeContentViewCenterSPcOp);
			CGPoint mContentCenterRight = CGPointMake(kCubeContentViewCenterSPrOp);
			
			CGPoint mContentCenter2 = CGPointMake (kCubeContentViewCenterSPcOll);
			CGPoint mContentCenterRight2 = CGPointMake(kCubeContentViewCenterSPrOll);
			
			CGPoint mZineLabelCenter = CGPointMake(kZineLabelButtonCenterOll);
			CGPoint mMobLabelCenter= CGPointMake(kMobLabelButtonCenterOll);
			CGPoint mCrudLabelCenter = CGPointMake(kCrudLabelButtonCenterOll);
			CGPoint mMerchLabelCenter= CGPointMake(kMerchLabelButtonCenterOll);
			CGPoint mRadioLabelCenter = CGPointMake(kRadioLabelButtonCenterOll);
			
			// anchorPointRef1
#pragma mark anchorPointRef1
			
			bigCubeView.layer.anchorPoint = mCubeAnchorPoint;
			bigCube2View.layer.anchorPoint = mCubeAnchorPoint;
			titleView.layer.anchorPoint = mTitleAnchorPoint;
			title2View.layer.anchorPoint = mTitleAnchorPoint;
			
			
			
			switch (cubeState) {
				case 1:{
					
					bigCubeView.center = mContentCenter;
					bigCube2View.center = mContentCenterRight;
					titleView.center = mContentCenter;
					title2View.center = mContentCenterRight;
				}
					break;
				case 2:
				{
					bigCube2View.center = mContentCenter;
					bigCubeView.center = mContentCenterRight;
					title2View.center = mContentCenter;
					titleView.center = mContentCenterRight;}
				break;}
			
			
			
			
			CATransform3D rotationTransform = CATransform3DIdentity;
			rotationTransform = CATransform3DRotate(rotationTransform,- kRotationTransformRadians * 3, 0.0, 0.0, 1.0);
			
			[UIView beginAnimations:@"rotate" context:nil];
			[UIView setAnimationDuration:kAnimationDuration];
			[UIView setAnimationBeginsFromCurrentState:NO];
			
			titleView.layer.transform = rotationTransform;
			title2View.layer.transform = rotationTransform;
			
			switch (cubeState) {
				case 1:
					titleView.center = mTitleCenter;
					title2View.center = mTitleCenterRight;
					bigCubeView.center = mContentCenter2;
					bigCube2View.center = mContentCenterRight2; 
					cubeContentView.center = mContentCenter2;
					cubeContent2View.center = mContentCenterRight2;
					
					break;
				case 2:
					title2View.center = mTitleCenter;
					titleView.center = mTitleCenterRight;
					bigCube2View.center = mContentCenter2;
					bigCubeView.center = mContentCenterRight2; 
					cubeContent2View.center = mContentCenter2;
					cubeContentView.center = mContentCenterRight2;
					break;
			}
			
			
			
			pageControlView.center = mPageControlCenter;
			bigCubeView.layer.transform = rotationTransform;
			bigCube2View.layer.transform = rotationTransform;
			
			cubeContentView.layer.transform = rotationTransform;
			cubeContent2View.layer.transform = rotationTransform;
			
			zineCube.layer.transform = rotationTransform;
			mobCube.layer.transform = rotationTransform;
			crudCube.layer.transform = rotationTransform;
			merchCube.layer.transform = rotationTransform;
			radioCube.layer.transform = rotationTransform;
			
			zineLabelButton.layer.transform = rotationTransform;
			zineLabelButton.center = mZineLabelCenter;
			mobLabelButton.layer.transform = rotationTransform;
			mobLabelButton.center = mMobLabelCenter;
			crudLabelButton.layer.transform = rotationTransform;
			crudLabelButton.center = mCrudLabelCenter;
			merchLabelButton.layer.transform = rotationTransform;
			merchLabelButton.center = mMerchLabelCenter;
			radioLabelButton.layer.transform = rotationTransform;
			radioLabelButton.center = mRadioLabelCenter;
			
			[UIView commitAnimations];
			
			slidePositionRight = CGPointMake (kCubeContentViewCenterSPrOll);
			slidePositionCenter = CGPointMake (kCubeContentViewCenterSPcOll);
			slidePositionLeft = CGPointMake (kCubeContentViewCenterSPlOll);
			
			
			slideContentPositionRight = CGPointMake (kCubeContentViewCenterSPrOll);
			slideContentPositionCenter = CGPointMake (kCubeContentViewCenterSPcOll);
			slideContentPositionLeft = CGPointMake (kCubeContentViewCenterSPlOll);
			
			
			slideTitlePositionRight = CGPointMake (kTitleViewCenterSPrOll );
			slideTitlePositionCenter = CGPointMake (kTitleViewCenterSPcOll);
			slideTitlePositionLeft = CGPointMake (kTitleViewCenterSPlOll);
		}
			
			break;
			
#pragma mark SpinPO:	
		case 1:
		{ //spinCenter PortriatOrientation
			
			// anchorPointRef2a
#pragma mark anchorPointRef2a
			
			CGPoint mCubeAnchorPoint = CGPointMake (kBigCubeAnchorPoint); 
			CGPoint mTitleAnchorPoint = CGPointMake (kTitleViewAnchorPoint);
			
			CGPoint mContentCenter = CGPointMake (kCubeContentViewCenterSPcOp);
			CGPoint mContentCenterRight = CGPointMake (kCubeContentViewCenterSPrOp);
			
			CGPoint mPageControlCenter = CGPointMake (kPageControlCenterOp);
			
			CGPoint mZineLabelCenter = CGPointMake(kZineLabelButtonCenterOp);
			CGPoint mMobLabelCenter= CGPointMake(kMobLabelButtonCenterOp);
			CGPoint mCrudLabelCenter = CGPointMake(kCrudLabelButtonCenterOp);
			CGPoint mMerchLabelCenter= CGPointMake(kMerchLabelButtonCenterOp);
			CGPoint mRadioLabelCenter = CGPointMake(kRadioLabelButtonCenterOp);
			
			// anchorPointRef2
#pragma mark anchorPointRef2
			
			bigCubeView.layer.anchorPoint = mCubeAnchorPoint;
			bigCube2View.layer.anchorPoint = mCubeAnchorPoint;
			
			
			titleView.layer.anchorPoint = mTitleAnchorPoint;
			title2View.layer.anchorPoint = mTitleAnchorPoint;
			
			CATransform3D rotationTransform = CATransform3DIdentity;
			
			[UIView beginAnimations:@"rotate" context:nil];
			[UIView setAnimationDuration:kAnimationDuration];
			[UIView setAnimationBeginsFromCurrentState:NO];
			
			switch (cubeState) {
				case 1:
					titleView.center = mContentCenter;
					title2View.center = mContentCenterRight;
					cubeContentView.center = mContentCenter;
					cubeContent2View.center = mContentCenterRight;
					bigCubeView.center = mContentCenter;
					bigCube2View.center = mContentCenterRight;					
					break;
				case 2:
					title2View.center = mContentCenter;
					titleView.center = mContentCenter;
					cubeContent2View.center = mContentCenter;
					cubeContentView.center = mContentCenterRight;
					bigCube2View.center = mContentCenter;
					bigCubeView.center = mContentCenterRight;	
				break;}
			
			pageControlView.center = mPageControlCenter;
			
			titleView.layer.transform = rotationTransform;
			bigCubeView.layer.transform = rotationTransform;
			
			
			title2View.layer.transform = rotationTransform;
			bigCube2View.layer.transform = rotationTransform;
			
			cubeContentView.layer.transform = rotationTransform;
			cubeContent2View.layer.transform = rotationTransform;
			
			zineCube.layer.transform = rotationTransform;
			mobCube.layer.transform = rotationTransform;
			crudCube.layer.transform = rotationTransform;
			merchCube.layer.transform = rotationTransform;
			radioCube.layer.transform = rotationTransform;
			
			zineLabelButton.layer.transform = rotationTransform;
			zineLabelButton.center = mZineLabelCenter;
			mobLabelButton.layer.transform = rotationTransform;
			mobLabelButton.center = mMobLabelCenter;
			crudLabelButton.layer.transform = rotationTransform;
			crudLabelButton.center = mCrudLabelCenter;
			merchLabelButton.layer.transform = rotationTransform;
			merchLabelButton.center = mMerchLabelCenter;
			radioLabelButton.layer.transform = rotationTransform;
			radioLabelButton.center = mRadioLabelCenter;
			
			[UIView commitAnimations];
			
			slidePositionRight = CGPointMake (kCubeContentViewCenterSPrOp);
			slidePositionCenter = CGPointMake (kCubeContentViewCenterSPcOp);
			slidePositionLeft = CGPointMake (kCubeContentViewCenterSPlOp);
			
			
			slideContentPositionRight = CGPointMake (kCubeContentViewCenterSPrOp);
			slideContentPositionCenter = CGPointMake (kCubeContentViewCenterSPcOp);
			slideContentPositionLeft = CGPointMake (kCubeContentViewCenterSPlOp);
			
			
			slideTitlePositionRight = CGPointMake (kTitleViewCenterSPrOp2);
			slideTitlePositionCenter = CGPointMake (kCubeContentViewCenterSPcOp);
			slideTitlePositionLeft = CGPointMake (kTitleViewCenterSPlOp2);
		}
			
			break;
			
#pragma mark SpinRLO:		
		case 2:
		{ //spinLeft RightLanscapeOrientation
			[window bringSubviewToFront:radioCube];
			[window bringSubviewToFront:merchCube];
			[window bringSubviewToFront:crudCube];
			[window bringSubviewToFront:mobCube];
			[window bringSubviewToFront:zineCube];
			
			// anchorPointRef3a
#pragma mark anchorPointRef3a
			
			CGPoint mCubeAnchorPoint = CGPointMake (kBigCubeAnchorPoint); 
			CGPoint mTitleAnchorPoint = CGPointMake (kTitleViewAnchorPoint);
			
			CGPoint mPageControlCenter =CGPointMake (kPageControlCenterOrl);
			
			CGPoint mTitleCenter = CGPointMake (kTitleViewCenterSPcOrl);
			CGPoint mTitleCenterRight = CGPointMake (kTitleViewCenterSPrOrl);
			
			CGPoint mContentCenter = CGPointMake (kCubeContentViewCenterSPcOp);
			CGPoint mContentCenterRight = CGPointMake (kCubeContentViewCenterSPrOp);
			
			CGPoint mContentCenter2 = CGPointMake (kCubeContentViewCenterSPcOrl);
			CGPoint mContentCenterRight2 = CGPointMake (kCubeContentViewCenterSPrOrl);
			
			CGPoint mZineLabelCenter = CGPointMake(kZineLabelButtonCenterOll);
			CGPoint mMobLabelCenter= CGPointMake(kMobLabelButtonCenterOll);
			CGPoint mCrudLabelCenter = CGPointMake(kCrudLabelButtonCenterOll);
			CGPoint mMerchLabelCenter= CGPointMake(kMerchLabelButtonCenterOll);
			CGPoint mRadioLabelCenter = CGPointMake(kRadioLabelButtonCenterOll);
			
			// anchorPointRef3
#pragma mark anchorPointRef3	 
			
			bigCubeView.layer.anchorPoint = mCubeAnchorPoint;
			bigCube2View.layer.anchorPoint = mCubeAnchorPoint;
			titleView.layer.anchorPoint = mTitleAnchorPoint;
			title2View.layer.anchorPoint = mTitleAnchorPoint;
			
			
			
			switch (cubeState)
			{
				case 1:
					titleView.center = mContentCenter;
					title2View.center = mContentCenterRight;
					bigCubeView.center = mContentCenter;
					bigCube2View.center = mContentCenterRight;
					
					break;
					
				case 2:
					titleView.center = mContentCenterRight;
					title2View.center = mContentCenter;
					bigCubeView.center = mContentCenterRight;
					bigCube2View.center = mContentCenter;
					
					break;
			}			
			
			CATransform3D rotationTransform = CATransform3DIdentity;
			rotationTransform = CATransform3DRotate(rotationTransform, kRotationTransformRadians * 3, 0.0, 0.0, 1.0);
			
			[UIView beginAnimations:@"rotate" context:nil];
			[UIView setAnimationDuration:kAnimationDuration];
			
			[UIView setAnimationBeginsFromCurrentState:NO];
			
			titleView.layer.transform = rotationTransform;
			title2View.layer.transform = rotationTransform;
			
			switch (cubeState) {
				case 1:
					titleView.center = mTitleCenter;
					title2View.center = mTitleCenterRight;
					bigCubeView.center = mContentCenter2;
					bigCube2View.center = mContentCenterRight2; 
					cubeContentView.center = mContentCenter2;
					cubeContent2View.center = mContentCenterRight2;
					
					break;
				case 2:
					title2View.center = mTitleCenter;
					titleView.center = mTitleCenterRight;
					bigCube2View.center = mContentCenter2;
					bigCubeView.center = mContentCenterRight2; 
					cubeContent2View.center = mContentCenter2;
					cubeContentView.center = mContentCenterRight2;
					break;
			}
			
			pageControlView.center = mPageControlCenter;
			bigCubeView.layer.transform = rotationTransform;
			
			
			
			bigCube2View.layer.transform = rotationTransform;
			
			cubeContentView.layer.transform = rotationTransform;
			cubeContent2View.layer.transform = rotationTransform;
			
			zineCube.layer.transform = rotationTransform;
			mobCube.layer.transform = rotationTransform;
			crudCube.layer.transform = rotationTransform;
			merchCube.layer.transform = rotationTransform;
			radioCube.layer.transform = rotationTransform;
			
			zineLabelButton.layer.transform = rotationTransform;
			zineLabelButton.center = mZineLabelCenter;
			mobLabelButton.layer.transform = rotationTransform;
			mobLabelButton.center = mMobLabelCenter;
			crudLabelButton.layer.transform = rotationTransform;
			crudLabelButton.center = mCrudLabelCenter;
			merchLabelButton.layer.transform = rotationTransform;
			merchLabelButton.center = mMerchLabelCenter;
			radioLabelButton.layer.transform = rotationTransform;
			radioLabelButton.center = mRadioLabelCenter;
			
			[UIView commitAnimations];
			
			slidePositionRight = CGPointMake (kCubeContentViewCenterSPrOrl);
			slidePositionCenter = CGPointMake (kCubeContentViewCenterSPcOrl);
			slidePositionLeft = CGPointMake (kCubeContentViewCenterSPlOrl);
			
			
			slideContentPositionRight = CGPointMake (kCubeContentViewCenterSPrOrl);
			slideContentPositionCenter = CGPointMake (kCubeContentViewCenterSPcOrl);
			slideContentPositionLeft = CGPointMake (kCubeContentViewCenterSPlOrl);
			
			
			slideTitlePositionRight = CGPointMake (kTitleViewCenterSPrOrl);
			slideTitlePositionCenter = CGPointMake (kTitleViewCenterSPcOrl);
			slideTitlePositionLeft = CGPointMake (kTitleViewCenterSPlOrl);
		}
			
			break;
			
	}
	
	
}


#pragma mark Dealloc:
- (void)dealloc {
	[device endGeneratingDeviceOrientationNotifications];
	[titleImages release];
    [pages release];
    [cubeAnimationImages release];
    [cubeReverseAnimationImages release];
	[window release];
	[super dealloc];
}


@end
