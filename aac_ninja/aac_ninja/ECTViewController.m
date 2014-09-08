//
//  ECTViewController.m
//  aac_ninja
//
//  Created by Byrdann Fox on 8/18/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

/* TO BE REPLACED BY ACAPELLA'S TTS ENGINE? */

/*
 
 - 
 -
 -
 -
 -
 -
 
*/

#import "ECTViewController.h"
#import "KeenClient.h"
#import "KeenProperties.h"
#import "KIOEventStore.h"

@interface ECTViewController ()

@property (strong, nonatomic) IBOutlet UITextView *textToSpeak;

@end

@implementation ECTViewController

NSDictionary *event;
NSString *testSentence;
NSMutableString *randomString;
int sentenceSpeed = 0;
NSString *sentenceId;
NSDate *thisMagicMoment;
NSTimeInterval timeOfNoMagic;
NSDate *lastMagicMoment;

- (void)viewWillAppear:(BOOL)animated

{
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    _speechPaused = 0;
    
    _textToSpeak.delegate = self;
    
    _playIt.layer.cornerRadius = 10;
    _playIt.clipsToBounds = YES;
    _clearIt.layer.cornerRadius = 10;
    _clearIt.clipsToBounds = YES;
    _dataView.layer.cornerRadius = 10;
    _dataView.clipsToBounds = YES;
    
    [_textToSpeak becomeFirstResponder];
    
    self.synthesizer = [[AVSpeechSynthesizer alloc] init];
    _speechPaused = NO;
    self.synthesizer.delegate = self;
    
    /* TEST CODE... */
    NSMutableArray *dataItems = [[NSMutableArray alloc] init];
    [dataItems addObject:@"Testing one..."];
    [dataItems addObject:@"Testing two..."];
    [dataItems addObject:@"Testing three..."];
    // NSLog(@"%@", dataItems);
    [dataItems insertObject:@"Fucka!" atIndex:0];
    __unused NSUInteger dataItemsLength = [dataItems count];
    // NSLog(@"%lu", (unsigned long)dataItemsLength);
    // NSLog(@"%@", dataItems);
    __unused NSString *testString = @"ABC mother fucka!";
    // NSLog(@"%@", testString);
    for (int i = 0; i < [dataItems count]; i++) {
        NSString *testString;
        testString = [dataItems objectAtIndex:i];
        // items value is changed and logged at each iteration...
        // NSLog(@"%@", testString);
    }
    /*for (int i = 0; i < 3; i++) {
        // NSLog(@"%d", i);
    }*/
    /*for (NSString *item in dataItems) {
        // NSString *testings = item;
        // NSLog(@"%@", testings);
    }*/
    dataItems = nil;
    /* TEST CODE... */
    
}

- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
}

- (void)textViewDidChange:(UITextView *)textView{
    
    if ([_textToSpeak.text length] == 1) {
        
        [self sentenceTimeStamper];
        
    }
    
}

-(NSString *)generateRandomString: (int) num {
    
    NSMutableString* string = [NSMutableString stringWithCapacity:num];
    
    for (int i = 0; i < num; i++) {
        
        [string appendFormat:@"%C", (unichar)('a' + arc4random_uniform(25))];
        
    }
    
    return string;
    
}

- (void)sentenceTimeStamper {
    
    thisMagicMoment = [NSDate date];
    
    [[NSUserDefaults standardUserDefaults] setObject:thisMagicMoment forKey:@"lastMagicMoment"];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

- (int)timeStampEvent {
    
    NSDate *thisMagicMoment = [NSDate date];
    
    lastMagicMoment = (NSDate *)[[NSUserDefaults standardUserDefaults] objectForKey:@"lastMagicMoment"];
    
    timeOfNoMagic = [thisMagicMoment timeIntervalSinceDate:lastMagicMoment];
    
    sentenceSpeed = (int)timeOfNoMagic;
    
    return sentenceSpeed;
    
}

- (void)sentenceCollection {
    
    sentenceId = [self generateRandomString:20];
    
    sentenceId = [NSString stringWithFormat:@"%@", sentenceId];
    
    // create custom classes for the data models...
    
    event = @{
              @"sentenceid" : sentenceId,
              @"sentence" : _textValue,
              @"speed" : [NSNumber numberWithInt:[self timeStampEvent]],
              @"user" : @{
                      @"id" : @"1234567890",
                      },
              };
    
    [[KeenClient sharedClient] addEvent:event toEventCollection:@"sentence_spoken" error:nil];
    
    [[KeenClient sharedClient] uploadWithFinishedBlock:^(void) { }];
    
}

- (IBAction)playPauseButtonPressed:(UIButton *)sender {
    
    [self timeStampEvent];
    
    _textValue = [NSString stringWithFormat:@"%@", _textToSpeak.text];
    
    [self sentenceCollection];
    
    event = nil;
    sentenceId = nil;
    _textValue = nil;
    sentenceSpeed = 0;
    
    if (_speechPaused == NO) {
        
        [self.playIt setTitle:@"Pause" forState:UIControlStateNormal];
        [self.synthesizer continueSpeaking];
        _speechPaused = YES;
        
    } else {
        
        [self.playIt setTitle:@"Speak" forState:UIControlStateNormal];
        _speechPaused = NO;
        [self.synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryImmediate];
        
    }
    
    if (self.synthesizer.speaking == NO) {
        
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:self.textToSpeak.text];
        utterance.rate = 0.2;
        utterance.pitchMultiplier = 1.0;
        utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];
        [self.synthesizer speakUtterance:utterance];
        
    }
    
}

-(void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
    
    [self.playIt setTitle:@"Speak" forState:UIControlStateNormal];
    _speechPaused = NO;
    NSLog(@"Playback finished");
    
}

- (IBAction)clearIt:(UIButton *)sender {
    
    self.textToSpeak.text = nil;
    
    event = nil;
    sentenceId = nil;
    _textValue = nil;
    sentenceSpeed = 0;
    
}

- (IBAction)dataView:(UIButton *)sender {
    
    
    
}

@end