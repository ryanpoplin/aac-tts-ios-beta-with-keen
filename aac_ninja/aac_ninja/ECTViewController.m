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

NSDictionary *event;
BOOL speechPaused = 0;
NSString *testSentence;
NSString *textValue;
NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

NSMutableString *randomString;
NSNumber *sentenceSpeed = 0;
NSString *sentenceId;

- (void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:animated];
    
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

-(NSString *) randomStringWithLength: (int) len {
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i = 0; i < len; i++) {
        
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length]) % [letters length]]];
    
    }
    
    return randomString;

}

- (void)sentenceTimeStamper {

    // make a timestamp when as soon as text is entered in the UITextView...
    
}

- (void)timeStampEvent {
    
    // get the value of the timestamp from the current time and use that value as the value for the the speed key...
    
}

- (void)sentenceCollection {
        
    sentenceId = [self randomStringWithLength:24];
    
    sentenceId = [NSString stringWithFormat:@"%@", sentenceId];
    
    event = @{
                @"sentence_id" : sentenceId,
                @"sentence" : textValue,
                @"speed" : @20,
                @"user" : @{
                            @"id" : @"1234567890",
                      },
              };
    
    NSLog(@"%@", event);
    
    sentenceId = nil;
    textValue = nil;
    sentenceSpeed = 0;
    
}

- (IBAction)playPauseButtonPressed:(UIButton *)sender {
    
    textValue = [NSString stringWithFormat:@"%@", _textToSpeak.text];
    
    [self sentenceCollection];
    
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