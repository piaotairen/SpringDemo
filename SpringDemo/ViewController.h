//
//  ViewController.h
//  SpringDemo
//
//  Created by shanghui on 13-6-4.
//  Copyright (c) 2013年 shanghui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyView.h"
@interface ViewController : UIViewController{
    
    CADisplayLink * displayLink;
    MyView *view;
}

@end
