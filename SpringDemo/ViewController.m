//
//  ViewController.m
//  SpringDemo
//
//  Created by shanghui on 13-6-4.
//  Copyright (c) 2013年 shanghui. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/CADisplayLink.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    view = [[MyView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:view];
    displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayLinkTick:)];
	[displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:(id)kCFRunLoopCommonModes];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayLinkTick:(CADisplayLink *)link {
    [view simulateSpringWithDisplayLink:link];
}

@end
