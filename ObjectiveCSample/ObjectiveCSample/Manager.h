//
//  Manager.h
//  ObjectiveCSample
//
//  Created by Yongseok Choi on 2020/03/31.
//  Copyright © 2020 Yongseok Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Manager : NSObject

@property (strong, nonatomic) UIViewController *viewController;

+ (Manager *)shared;

@end
