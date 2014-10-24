//
//  TodayViewController.m
//  TodayExtension
//
//  Created by Hunk on 14/10/22.
//  Copyright (c) 2014年 Hunk. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

NSString * const groupIdentifier = @"group.com.hunk.assistant";

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setPreferredContentSize:CGSizeMake(self.view.bounds.size.width, 120.0)];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *image = [UIImage imageNamed:@"lottery_logo_ssq.png"];
    [button setFrame:CGRectMake(0.0, (self.preferredContentSize.height - 120.0) / 2.0, 100.0, 120.0)];
    [button setImage:image forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(90.0, (self.preferredContentSize.height - 30.0) / 2.0, 160.0, 30.0)];
    [label setText:@"01,02,03,04,05,06 07"];
    [label setFont:[UIFont systemFontOfSize:16.0]];
    [label setTextColor:[UIColor yellowColor]];
    [self.view addSubview:label];
    
    // 立即购买
    UIButton *buyButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buyButton setFrame:CGRectMake(240.0, (self.preferredContentSize.height - 30.0) / 2.0, 80.0, 30.0)];
    [buyButton setTitle:@"立即购买" forState:UIControlStateNormal];
    [buyButton addTarget:self action:@selector(buyButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buyButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsMake(0.0, -50.0, 0.0, 0.0);
}

- (void)buttonAction
{
    /* By NSUserDefaults
     // Read
     NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:groupIdentifier];
     NSString *value = [shared objectForKey:@"TextKey"];
     NSLog(@"Read TextKey = %@", value);
     
     NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:groupIdentifier];
     [shared setObject:string forKey:@"TextKey"];
     [shared synchronize];
    */
}

- (void)buyButtonAction
{
    [self.extensionContext openURL:[NSURL URLWithString:@"http://caipiao.taobao.com/"] //ContainingApp://com.hunk.containingapp
                 completionHandler:^(BOOL success) {
                     NSLog(@"open url result:%d",success);
                 }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
