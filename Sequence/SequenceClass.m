//
//  SequenceClass.m
//  Sequence
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import "SequenceClass.h"

@implementation SequenceClass

- (id)initArray:(NSArray*)array {
    if (self = [super init]) {
        _array = array;
    }
    return self;
}

- (NSNumber*)sum {
    NSNumber* sum = [_array valueForKeyPath:@"@sum.self"];
    NSLog(@"%@", sum);
    return sum;
}

- (NSArray*)sortedArray {
    _array = [_array sortedArrayUsingSelector:@selector(compare:)];
    return _array;
}
- (NSInteger)longestSequenceInArray:(NSInteger)spacing {
    int count = 1;
    for (int a = 0; a < _array.count -1; ++a) {
        int obj1 = [[_array objectAtIndex:a] intValue];
        int obj2 = [[_array objectAtIndex:a+1] intValue];
        
        if (obj2 - obj1 == 1) {
            ++ count;
        }else{
            count = count;
        }
    }
    NSLog(@"The logest sesequence in array with spacing %ld is %d",(long)spacing, count);
    return count;
}
@end
