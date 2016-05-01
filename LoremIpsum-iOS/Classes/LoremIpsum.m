//
//  LoremIpsum.m
//  Pods
//
//  Created by Martin Jeffers on 02/05/2016.
//
//

#import "LoremIpsum.h"

@implementation LoremIpsum

+(NSArray*)getStringForType:(enum LoremIpsumType)type{
    
    switch (type) {
        case Title:
            return [@"Lorem Ipsum" componentsSeparatedByString:@" "];
            
        case Words:
        case Paragraph:
            return [@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." componentsSeparatedByString:@" "];
            
        default:
            return [@" " componentsSeparatedByString:@" "];
    }
}

+(NSUInteger)randomLength{
    return arc4random_uniform(1000);
}

+(NSUInteger)randomWordInArray:(NSArray*)array{
    return arc4random_uniform((int)array.count);
}

+(NSString*)generateTextForType:(enum LoremIpsumType)type{
    
    switch (type) {
        case Title:
            return [self title];
        case Words:
            return [self words];
        case Paragraph:
            return [self paragraph];
        default:
            return @"You did not pass through a type.";
            
    }
}

+(NSString*)title{
    return [[self getStringForType:Title] componentsJoinedByString:@" "];
}

+(NSString*)paragraph{
    return [self generateParagraphsWithLength:1];
}

+(NSString*)words{
    return [self generateRandomWordsWithLength:[self randomLength]];
}

+(NSString*)generateRandomWordsWithLength:(NSUInteger)length{
    
    NSArray*wordArray = [self getStringForType:Words];
    
    NSMutableArray *words = [NSMutableArray arrayWithCapacity:length];
    for (NSInteger i = 0; i < length; i++) {
        [words addObject:[wordArray objectAtIndex:[self randomWordInArray:wordArray]]];
    }
    return [words componentsJoinedByString:@" "];
}

+(NSString*)generateParagraphsWithLength:(NSUInteger)length{
    
    NSArray *paragraphArray = [self getStringForType:Paragraph];
    
    NSMutableArray *paragraphs = [NSMutableArray new];
    for (NSInteger i = 0; i < length; i++) {
        [paragraphs addObjectsFromArray:paragraphArray];
        [paragraphs addObject:@"\n\n"];
    }
    return [paragraphs componentsJoinedByString:@" "];
}

@end
