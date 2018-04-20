//
//  EGBStudent.h
//  DictionaryTest
//
//  Created by Eddie on 19.04.2018.
//  Copyright © 2018 Eddie Galchenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EGBStudent : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* lasName;
@property (strong, nonatomic) NSString* welcomeWords;

-(NSString *)description;

@end
