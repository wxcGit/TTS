//
//  ViewController.m
//  TTS_demo
//
//  Created by wxc on 18/7/17.
//  Copyright © 2017年 wxc. All rights reserved.
//

#import "ViewController.h"
#import "TKTTSManager.h"

@interface ViewController ()

@property (nonatomic, strong) TKTTSManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _manager = [TKTTSManager sharedInstance];
    NSString *content = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"content" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
    
    _manager.speakString = content;
}

- (IBAction)start:(id)sender {
    [_manager startSpeak];
}


- (IBAction)pause:(id)sender {
    [_manager pauseSpeak:TKStopSpeakTypeWord];
}

- (IBAction)continueSpeak:(id)sender {
    [_manager continueSpeak];
}


- (IBAction)finish:(id)sender {
    [_manager stopSpeak:TKStopSpeakTypeImmediate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
