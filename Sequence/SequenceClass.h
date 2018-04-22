//
//  SequenceClass.h
//  Sequence
//
//  Created by Роман on 22.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SequenceClass : NSObject
@property (strong, nonatomic, readonly) NSArray* array;
- (NSNumber*)sum;
- (id)initArray:(NSArray*)array;
- (NSArray*)sortedArray;
- (NSInteger)longestSequenceInArray:(NSInteger)spacing;

@end
