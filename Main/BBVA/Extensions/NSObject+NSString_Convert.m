//
//  NSObject+NSString_Convert.m
//  BBVA
//
//  Created by Nhan Nguyen on 8/21/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

#import "NSObject+NSString_Convert.h"

@implementation NSObject (NSString_Convert)
- (NSString *)convert: (NSString *)stringInput
{
    NSMutableString *result = [NSMutableString new];
    for(int i = 0; i < [stringInput length]; i++) {
        char c = [stringInput characterAtIndex:i];
        
        if(c >= '0' && c <= '9') {
            NSString *s = [NSString stringWithFormat:@"%c", c];
            [result insertString:s atIndex:i];
        }
    }
    double convert = [result intValue]*0.621371;
    NSNumber *numberConvert = [NSNumber numberWithDouble:convert];
    
    return [numberConvert stringValue];
}
@end
