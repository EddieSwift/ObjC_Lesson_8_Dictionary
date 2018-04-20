//
//  EGBStudent.m
//  DictionaryTest
//
//  Created by Eddie on 19.04.2018.
//  Copyright © 2018 Eddie Galchenko. All rights reserved.
//

#import "EGBStudent.h"

@implementation EGBStudent

-(NSString *)description {
    return [NSString stringWithFormat:@"Name: %@,  Last Name: %@, Welcome Phrase: %@", self.name, self.lasName, self.welcomeWords];
}

@end
