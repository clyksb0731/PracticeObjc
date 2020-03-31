//
//  Manager.m
//  ObjectiveCSample
//
//  Created by Yongseok Choi on 2020/03/31.
//  Copyright © 2020 Yongseok Choi. All rights reserved.
//

#import "Manager.h"

@interface Manager()

@end

@implementation Manager

+ (Manager *)shared {
    @synchronized(self) {
        static Manager *_instance = nil;
        
        if (!_instance) {
            _instance = [[self alloc] init];
        }
        
        return _instance;
    }
    
    return nil;
}

@end
