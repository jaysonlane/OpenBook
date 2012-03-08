//
//  AppDelegate.h
//  OpenBook
//
//  Created by Jayson Lane on 3/8/12.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    
    UIImageView     *splashImage;
    
    
}

@property (nonatomic, retain) UIImageView *splashImage;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;


@end
