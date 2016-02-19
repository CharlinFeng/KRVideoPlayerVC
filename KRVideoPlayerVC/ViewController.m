//
//  ViewController.m
//  KRVideoPlayerVC
//
//  Created by 成林 on 15/9/13.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "KRVideoPlayerController.h"

@interface ViewController ()

@property (nonatomic,strong) KRVideoPlayerController *videoController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    self.videoController = [[KRVideoPlayerController alloc] initWithFrame:CGRectMake(0, 0, width, width*(9.0/16.0))];
    self.videoController.contentURL = [NSURL URLWithString:@"http://krtv.qiniudn.com/150522nextapp"];
    

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.videoController showInWindow];
        [self.videoController play];
    });
}


@end
