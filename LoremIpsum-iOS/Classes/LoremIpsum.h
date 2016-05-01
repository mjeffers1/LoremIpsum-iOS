//
//  LoremIpsum.h
//  Pods
//
//  Created by Martin Jeffers on 02/05/2016.
//
//

#import <Foundation/Foundation.h>

typedef enum LoremIpsumType : NSUInteger {
    Title,
    Paragraph,
    Words
} LoremIpsumType;

@interface LoremIpsum : NSObject

+(NSString*)generateTextForType:(enum LoremIpsumType)type;
+(NSString*)generateRandomWordsWithLength:(NSUInteger)length;
+(NSString*)generateParagraphsWithLength:(NSUInteger)length;

@end

