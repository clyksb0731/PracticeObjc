//
//  ViewController.m
//  ObjectiveCSample
//
//  Created by Yongseok Choi on 2020/03/31.
//  Copyright © 2020 Yongseok Choi. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Manager shared].viewController = self;
    
    
}


@end
