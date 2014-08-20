//
//  ECTViewController.h
//  aac_ninja
//
//  Created by Byrdann Fox on 8/18/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ECTViewController : UIViewController <AVSpeechSynthesizerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textToSpeak;
@property (weak, nonatomic) IBOutlet UIButton *clearIt;
@property (weak, nonatomic) IBOutlet UIButton *playIt;
@property (weak, nonatomic) IBOutlet UIButton *dataView;
@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;

@end