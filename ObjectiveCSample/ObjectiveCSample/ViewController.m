//
//  ViewController.m
//  ObjectiveCSample
//
//  Created by Yongseok Choi on 2020/03/31.
//  Copyright © 2020 Yongseok Choi. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
#import "FirstCustomException.h"
#import "SecondCustomException.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Manager shared].viewController = self;
    
    [self.userID setText:@"UserID 는 userID"];
}


- (IBAction)testException:(UIButton *)sender {
    int a = 0;
    int b = 0;
    
    if(sender.tag == 1) {
        b = -1;
    } else {
        b = 1;
    }
    
    @try {
        if(a > b) {
            @throw [[FirstCustomException alloc] initWithName:@"first" reason:@"reason1" userInfo:nil];
        } else {
            @throw [[SecondCustomException alloc] initWithName:@"first" reason:@"reason1" userInfo:nil];
        }
    } @catch (FirstCustomException *exception) {
        NSLog(@"First Exception");
        
    } @catch (SecondCustomException *exception) {
        NSLog(@"Second Exception");
        
    } @finally {
        NSLog(@"Finished");
    }
}
@end
