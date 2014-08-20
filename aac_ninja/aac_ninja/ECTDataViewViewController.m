//
//  ECTDataViewViewController.m
//  aac_ninja
//
//  Created by Byrdann Fox on 8/18/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

// we will have the best AAC and TTS applications with industry driven features and data...

// 

#import "ECTDataViewViewController.h"

@interface ECTDataViewViewController ()

@property (nonatomic, strong) UIWebView *dataWebView;

@end

@implementation ECTDataViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.dataWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.dataWebView.scalesPageToFit = YES;
    [self.view addSubview:self.dataWebView];
    
    // show the a mobile web view with KEEN.IO Google || D3.js charts...
    
    NSURL *url = [NSURL URLWithString:@"http://www.keen.io"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.dataWebView loadRequest:request];

}

- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.

}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

- (void)viewWillDisappear:(BOOL)animated {
    
    self.navigationController.navigationBar.translucent = YES;

}

@end