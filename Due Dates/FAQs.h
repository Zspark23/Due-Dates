//
//  FAQs.h
//  Due Dates
//
//  Created by Zack Spicer on 7/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FAQs : NSObject

+ (NSInteger)count;

+ (NSString *)typeAtIndex:(NSInteger)index;

+ (NSString *)questionTypeAtIndex:(NSInteger)ingIndex inQuestionAtIndex:(NSInteger)recIndex;

+ (NSString *)questionAtIndex:(NSInteger)index;

+ (NSInteger)questionsCountAtIndex:(NSInteger)index;

@end
