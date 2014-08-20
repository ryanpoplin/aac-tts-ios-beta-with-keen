//
//  ECTViewController.m
//  aac_ninja
//
//  Created by Byrdann Fox on 8/18/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

#import "ECTViewController.h"
#import "KeenClient.h"
#import "KeenProperties.h"
#import "KIOEventStore.h"

@interface ECTViewController ()

@end

@implementation ECTViewController

BOOL speechPaused = 0;

- (void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:animated];
    
    
    
    /*NSDictionary *event = [NSDictionary dictionaryWithObjectsAndKeys:@"first view", @"view_name", @"going to", @"action", nil];
    NSDate *myDate = [NSDate date];
    
    NSLog(@"%@", event);
    
    KeenProperties *keenProperties = [[KeenProperties alloc] init];
    keenProperties.timestamp = myDate;
    [[KeenClient sharedClient] addEvent:event
                     withKeenProperties:keenProperties
                      toEventCollection:@"tab_views"
                                  error:nil];*/

}

- (void)viewDidLoad

{
    
    [super viewDidLoad];
	       
    _playIt.layer.cornerRadius = 10;
    _playIt.clipsToBounds = YES;
    _clearIt.layer.cornerRadius = 10;
    _clearIt.clipsToBounds = YES;
    _dataView.layer.cornerRadius = 10;
    _dataView.clipsToBounds = YES;
    
    [_textToSpeak becomeFirstResponder];
    
    self.synthesizer = [[AVSpeechSynthesizer alloc] init];
    speechPaused = NO;
    self.synthesizer.delegate = self;
    
}

- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];

}

- (IBAction)playPauseButtonPressed:(UIButton *)sender {
    
    if (speechPaused == NO) {
        [self.playIt setTitle:@"Pause" forState:UIControlStateNormal];
        [self.synthesizer continueSpeaking];
        speechPaused = YES;
    } else {
        [self.playIt setTitle:@"Speak" forState:UIControlStateNormal];
        speechPaused = NO;
        [self.synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryImmediate];
    }
    if (self.synthesizer.speaking == NO) {
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:self.textToSpeak.text];
        utterance.rate = 0.2;
        utterance.pitchMultiplier = 1.0;
        utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-GB"];
        [self.synthesizer speakUtterance:utterance];
    }
        
}

-(void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
    [self.playIt setTitle:@"Speak" forState:UIControlStateNormal];
    speechPaused = NO;
    NSLog(@"Playback finished");
}

- (IBAction)clearIt:(UIButton *)sender {
        
    self.textToSpeak.text = @"";
        
}

- (IBAction)dataView:(UIButton *)sender {
    
    //...
    
}

@end