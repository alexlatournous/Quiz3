//
//  main.m
//  Quiz3
//
//  Created by Alex La Tournous on 3/8/14.
//  Copyright (c) 2014 Alex La Tournous. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[]){
    
    @autoreleasepool {
        
        //#1
        NSLog(@"Alex");
        
        //#2
        NSString *firstName = @"Alex";
        
        //#3
        NSLog(@"%@",firstName);
        
        //#4
        NSNumber *number = [NSNumber numberWithInt:200];
        
        //#5
        NSLog(@"%@", number);
        
        //#6
        NSArray *fruits;
        NSString *apple = @"apple";
        NSString *banana = @"banana";
        NSString *cherry = @"cherry";
        fruits = @[apple,banana,cherry];
        
        //#7
        for (NSString *fruit in fruits){
            NSLog(@"%@", fruit);
        }
        
        //#8
        NSDictionary *fruitSweetness;
        fruitSweetness = @{
            apple: [NSNumber numberWithInt:(6)],
            banana: [NSNumber numberWithInt:(8)],
            cherry: [NSNumber numberWithInt:(9)],
        };
        
        //#9
        NSLog(@"An %@ has sweetness %@/10",apple, fruitSweetness[apple]);
        
        //#10
        NSUInteger myUInteger = 123;
        NSLog(@"%lu",(unsigned long)myUInteger);
        
        //#11
        NSNumber *num1 = [NSNumber numberWithInt:(12)];
        NSNumber *num2 = [NSNumber numberWithInt:(10)];
        NSLog(@"%d", [num1 intValue] * [num2 intValue]);
        
        //#12
        NSString *lastName = @"La Tournous";
        
        //#13
        NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        
        //#14
        NSLog(@"%@", fullName);
        
        //#15
        for (NSString *str in fruitSweetness){
            if ([fruitSweetness[str] integerValue] < 4) {
                NSLog(@"not sweet");
            }
            else if ([fruitSweetness[str] integerValue] >= 4 & [fruitSweetness[str] integerValue] <= 7){
                NSLog(@"somewhat sweet");
            }
            else {
                NSLog(@"sweet");
            }
        };
                 }
        //#16
        typedef NS_ENUM(int, DayOfWeek){
            Monday,
            Tuesday,
            Wednesday,
            Thursday,
            Friday,
            Saturday,
            Sunday
        };
        //#17
        DayOfWeek *currentDay;
        //#18
        void (^myFirstBlock)(void) = ^{
            NSLog(@"message");
        };
        myFirstBlock();
        //#18
        void (^mySecondBlock)(NSString *) = ^ (NSString *word){
            NSLog(@"%@", word);
        };
        mySecondBlock(@"Hello");
        mySecondBlock(@"World");
}


