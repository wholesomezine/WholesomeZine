// hello
//  WholesomeAppDelegate.h
//  Wholesome
//
//  Created by Wholesome on 3/25/10.
//  Copyright WholesomeZine LLC 2010. All rights reserved. 
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "constants.h"
#import "pageView.h"


@interface WholesomeAppDelegate : UIViewController <UIApplicationDelegate, UIScrollViewDelegate> {
	
	UIWindow *window;
	
	int cubeNumber;
	int cubeState;
	
	UIDevice *device;
	
	NSArray *titleImages;
    NSArray *pages;
    NSArray *cubeAnimationImages;
    NSArray *cubeReverseAnimationImages;
  
	
	IBOutlet UIImageView *titleView;
	IBOutlet UIImageView *title2View;    
	
	IBOutlet UIImageView *backGroundView;
	IBOutlet UIView *backGroundScrollView;
	
	
	IBOutlet UIImageView *bigCubeView;
	IBOutlet UIImageView *bigCube2View;
    
    pageView *currentPage;
    pageView *nextPage;
	
	IBOutlet UIView *cubeContentView;
	IBOutlet UIView *cubeContent2View;
	
	
	IBOutlet UIView *cubeThumbnailView;
	IBOutlet UIView *cubeThumbnail2View;
	
	IBOutlet UIView *pageControlView;
	
	IBOutlet UIPageControl *cubeControl;
	
	IBOutlet UIButton *zineCube;
	IBOutlet UIButton *mobCube;
	IBOutlet UIButton *crudCube;
	IBOutlet UIButton *merchCube;
	IBOutlet UIButton *radioCube;
	
	IBOutlet UIButton *zineLabelButton;
	IBOutlet UIButton *mobLabelButton;
	IBOutlet UIButton *crudLabelButton;
	IBOutlet UIButton *merchLabelButton;
	IBOutlet UIButton *radioLabelButton;
    
    IBOutlet UIButton *legfishButton;
	
	CGPoint slidePositionRight; 
	CGPoint slidePositionCenter;
	CGPoint slidePositionLeft;
	
	CGPoint slideContentPositionRight; 
	CGPoint slideContentPositionCenter;
	CGPoint slideContentPositionLeft;
	
	CGPoint slideTitlePositionRight; 
	CGPoint slideTitlePositionCenter;
	CGPoint slideTitlePositionLeft;
	
	
	
}
// PropetyDeclarations:
#pragma mark PropetyDeclarations:

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (assign) int cubeNumber;
@property (assign) int cubeState;
@property (nonatomic, retain) IBOutlet pageView *currentPage;
@property (nonatomic, retain) IBOutlet pageView *nextPage;



// CubeActions:
#pragma mark CubeActions:

-(IBAction) legfishWasTouched:(id)sender;
-(IBAction) legfish2WasTouched:(id)sender;
-(IBAction) cubeWasTouched:(id)sender;
-(IBAction) cubeControlWasTouched:(id)sender;
-(void) orientationChanged:(NSNotification *) notification;

// AnimationMethods:

-(id)loadPage:(int)pageNumber;

-(void)startIntro;

-(void)slide:(int) direction:(int)nextCube;

-(void)zoom;
-(void)xtraZoom;

-(void)rotateLeft;
-(void)rotateRight;
-(void)rotateUp;
-(void)rotateDown;

-(void)spin:(int) direction;



@end

