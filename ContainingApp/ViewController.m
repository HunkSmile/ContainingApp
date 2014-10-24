//
//  ViewController.m
//  ContainingApp
//
//  Created by Hunk on 14/10/22.
//  Copyright (c) 2014年 Hunk. All rights reserved.
//

#import "ViewController.h"

NSString * const groupIdentifier = @"group.com.hunk.assistant";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    /*
    static NSInteger i = 0;
    NSString *string = [NSString stringWithFormat:@"FileManager-%ld", (long)i];
    i++;
    
//    // Write
//    NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:groupIdentifier];
//    [shared setObject:string forKey:@"TextKey"];
//    [shared synchronize];
    
    NSError *err = nil;
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:groupIdentifier];
    containerURL = [containerURL URLByAppendingPathComponent:@"Library/Caches/good"];
    
    BOOL result = [string writeToURL:containerURL atomically:YES encoding:NSUTF8StringEncoding error:&err];
    if (!result)
    {
        NSLog(@"%@",err);
    } else {
        NSLog(@"save value:%@ success.", string);
    }
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
