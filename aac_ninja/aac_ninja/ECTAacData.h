//
//  ECTAacData.h
//  aac_ninja
//
//  Created by Byrdann Fox on 9/3/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// KEEP THE DATA LOGIC HERE...(a class outside of the TTS engine...

// name of the class and the class that is its superclass...

// only one superclass...
@interface ECTAacData : NSObject

// add ivars and meths that this class has...

// add ivars with inside of the {}...

/*
 
 configure standards compliant data models for the speech apps to follow along to. 
 
 these standards compliant features will be
 
*/

{
    
    // add IOS book example here...
    
    // * === a pointer to an object in memory...

    // use the _ convention for ivars...
    
    NSDictionary *_aacDataDictionary;
    NSString *_aacSentenceId;
    NSString *_aacSentence;
    int _aacSentenceSpeed;
    NSDate *_thisMagicMoment;
    NSTimeInterval _timeOfNoMagic;
    NSDate *_lastMagicMoment;
    // NSMutableString *_aacRandomString;
    // NSString *_
    // add unique user id string for Keen.io...
    
    
}



@end