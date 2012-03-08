//
//  AppDelegate.m
//  OpenBook
//
//  Created by Jayson Lane on 3/8/12.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import <QuartzCore/QuartzCore.h>

@implementation AppDelegate

@synthesize splashImage;
@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    
    // Add the image to the forefront...
    splashImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [splashImage setImage: [UIImage imageNamed:@"Default"]];
    [self.window addSubview:splashImage];
    [self.window bringSubviewToFront:splashImage];
    
    self.splashImage.layer.anchorPoint = CGPointMake(0, 0.5);
    self.splashImage.frame = CGRectMake(0, 0, 320, 480);
    
    [UIView animateWithDuration:1.0
                          delay:0.6
                        options:(UIViewAnimationCurveEaseOut) 
                     animations:^{
                         
                         self.splashImage.layer.transform = CATransform3DRotate(CATransform3DIdentity, -M_PI_2, 0, 1, 0);
                     } completion:^(BOOL finished){
                         // completion code
                         [self.splashImage removeFromSuperview];
                     }];
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
