//
//  AppDelegate.m
//  DictionaryTest
//
//  Created by Eddie on 18.04.2018.
//  Copyright © 2018 Eddie Galchenko. All rights reserved.
//

#import "AppDelegate.h"
#import "EGBStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    NSDictionary* dictinary = [[NSDictionary alloc] initWithObjectsAndKeys:
                               @"Petrov", @"lastName",
                               @"Vasiliy", @"name",
                               [NSNumber numberWithInt:25], @"age",
                               nil];
    
    
    //NSDictionary* dictionary2 = [NSDictionary dictionaryWithObjectsAndKeys:(nonnull id), ..., nil]
    
    NSInteger number = 25;
    
    NSDictionary* dictionary3 = @{@"name":@"Vasiliy", @"lastName":@"Petrov", @"age":@(number)};
 
    NSLog(@"%@, \ncount = %lu", dictionary3, (unsigned long)[dictionary3 count]);
    
    NSLog(@"name = %@, lastName = %@, age = %ld",
          [dictionary3 objectForKey:@"name"],
          [dictionary3 objectForKey:@"lastName"],
          [[dictionary3 objectForKey:@"age"] integerValue]);
    
    for (NSString* key in [dictionary3 allKeys]) {
        
        id obj = [dictionary3 objectForKey:key];
        
        NSLog(@"key = %@, value = %@", key, obj);
    }
      */
    
    
    EGBStudent* stud1 = [[EGBStudent alloc] init];
    stud1.name = @"Eddie";
    stud1.lasName = @"Born";
    stud1.welcomeWords = @"Hello, World!";
    
    EGBStudent* stud2 = [[EGBStudent alloc] init];
    stud2.name = @"John";
    stud2.lasName = @"Petruchi";
    stud2.welcomeWords = @"Hi, my name is John!";
    
    EGBStudent* stud3 = [[EGBStudent alloc] init];
    stud3.name = @"Richard";
    stud3.lasName = @"Bronson";
    stud3.welcomeWords = @"Hi, my name is Richard!";
    
    EGBStudent* stud4 = [[EGBStudent alloc] init];
    stud4.name = @"Avraam";
    stud4.lasName = @"Linkoln";
    stud4.welcomeWords = @"Hi, my name is Steve!";
    
    EGBStudent* stud5 = [[EGBStudent alloc] init];
    stud5.name = @"Joe";
    stud5.lasName = @"Satriany";
    stud5.welcomeWords = @"Hi, my name is Joe!";
    
    EGBStudent* stud6 = [[EGBStudent alloc] init];
    stud6.name = @"Zakk";
    stud6.lasName = @"Wylde";
    stud6.welcomeWords = @"Hi, my name is Zakk!";
    
    EGBStudent* stud7 = [[EGBStudent alloc] init];
    stud7.name = @"Ozzy";
    stud7.lasName = @"Osborn";
    stud7.welcomeWords = @"Hi, my name is Ozzy!";
    
    EGBStudent* stud8 = [[EGBStudent alloc] init];
    stud8.name = @"Mark";
    stud8.lasName = @"Zukerberg";
    stud8.welcomeWords = @"Hi, my name is Mark!";
    
    EGBStudent* stud9 = [[EGBStudent alloc] init];
    stud9.name = @"Bill";
    stud9.lasName = @"Gates";
    stud9.welcomeWords = @"Hi, my name is Bill!";
    
    EGBStudent* stud10 = [[EGBStudent alloc] init];
    stud10.name = @"Steve";
    stud10.lasName = @"Wozniak";
    stud10.welcomeWords = @"Hi, my name is Steve!";
    
    
    NSDictionary* listOfStudents = [[NSDictionary alloc] initWithObjectsAndKeys:
                                    stud1, [stud1.name stringByAppendingString:stud1.lasName],
                                    stud2, [stud2.name stringByAppendingString:stud2.lasName],
                                    stud3, [stud3.name stringByAppendingString:stud3.lasName],
                                    stud4, [stud4.name stringByAppendingString:stud4.lasName],
                                    stud5, [stud5.name stringByAppendingString:stud5.lasName],
                                    stud6, [stud6.name stringByAppendingString:stud6.lasName],
                                    stud7, [stud7.name stringByAppendingString:stud7.lasName],
                                    stud8, [stud8.name stringByAppendingString:stud8.lasName],
                                    stud9, [stud9.name stringByAppendingString:stud9.lasName],
                                    stud10, [stud10.name stringByAppendingString:stud10.lasName],
     
                                    nil];
    
     /*
    // Level Pupil
      NSLog(@"Level 1: Pupil");
    NSLog(@"%@", listOfStudents);
    
    // Level Student
      NSLog(@"Level 2: Student");
      for (NSString* key in [listOfStudents allKeys]) {
        
        id obj = [listOfStudents objectForKey:key];
        
        NSLog(@"key = %@, value = %@", key, obj);
    }
    */
    
    // Level Master
    NSLog(@"Level 3: Master (Sorted by Alphabet Names");
    
    NSArray* sortedArray = [NSArray arrayWithArray:[listOfStudents allKeys]];
    
    NSSortDescriptor* descriptor = [[NSSortDescriptor alloc] initWithKey:Nil ascending:YES];
    
    NSArray* sorted = [NSArray arrayWithArray:[sortedArray sortedArrayUsingDescriptors:@[descriptor]]];
    
    for (NSString* key in sorted) {
        
        EGBStudent* student = [listOfStudents objectForKey:key];
 
        NSLog(@"Name = %@, Surname = %@, Welcome Phrase = %@", student.name, student.lasName, student.welcomeWords);
    }
    
    NSLog(@"Level 3: Master (Serted by Key Number");
    
    NSArray* array = [listOfStudents keysSortedByValueUsingComparator:
                      ^NSComparisonResult(id obj1, id obj2) {
                          NSString* lastName1 = [obj1 lasName];
                          NSString* lastName2 = [obj2 lasName];
                          
                          if (!([lastName1 isEqualToString:lastName2])) {
                              return [lastName1 compare:lastName2];
                          } else {
                              return [[obj1 name] compare:[obj2 name]];
                          }
                          return [[obj1 lasName] compare:[obj2 lasName]];
                      } ];
    
    for (NSString* key in array) {
        id obj = [listOfStudents objectForKey:key];
        NSLog(@"%@ %@ says you this: %@", [obj name], [obj lasName], [obj welcomeWords]);
    }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
