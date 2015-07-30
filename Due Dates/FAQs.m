//
//  FAQs.m
//  Due Dates
//
//  Created by Zack Spicer on 7/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FAQs.h"

static NSString const *FAQSectionKey = @"questionSectionKey";
static NSString const *FAQQuestionsKey = @"questionsKey";
static NSString const *FAQQuestionTitleKey = @"questionTitleKey";
static NSInteger sectionCounter = 0;

@implementation FAQs

+ (NSInteger)count {
    return [[self FAQsArray] count];
}

+ (NSString *)typeAtIndex:(NSInteger)index {
    return [self FAQsArray][index][FAQSectionKey];
}

+ (NSString *)questionTypeAtIndex:(NSInteger)ingIndex inQuestionAtIndex:(NSInteger)recIndex {
    return [self FAQsArray][ingIndex][FAQQuestionsKey][recIndex][FAQQuestionTitleKey];
}

+ (NSInteger)questionsCountAtIndex:(NSInteger)index {
    return [[self FAQsArray][index][FAQQuestionsKey] count];
}

+ (NSString *)questionAtIndex:(NSInteger)index {
    return [self FAQsArray][sectionCounter][FAQQuestionsKey][index];
}

+ (NSArray *)FAQsArray
{
    return @[
             @{
                 FAQSectionKey : @"General",
                 FAQQuestionsKey : @[
                         @{FAQQuestionTitleKey : @"What is this app supposed to do?"},
                         @{FAQQuestionTitleKey : @"What am I supposed to do on the \"Create New Entry\" page?"},
                         @{FAQQuestionTitleKey : @"What does the \"View Current Entries\" page show?"},
                         @{FAQQuestionTitleKey : @"What does the Full info page show?"},
                         @{FAQQuestionTitleKey : @"Why does my entry highlight green on the view entries page?"},
                         @{FAQQuestionTitleKey : @"Why does my entry highlight red on the view entries page?"},
                         ],
                 },
             @{
                 FAQSectionKey : @"Types",
                 FAQQuestionsKey : @[
                         @{FAQQuestionTitleKey : @"What is the \"type\" for each entry?"},
                         @{FAQQuestionTitleKey : @"How does the homework entries Work?"},
                         @{FAQQuestionTitleKey : @"How does the Essay/Paper entries work?"},
                         @{FAQQuestionTitleKey : @"How does the Project entries work?"},
                         @{FAQQuestionTitleKey : @"How does the Test entries work?"},
                         @{FAQQuestionTitleKey : @"How does the Chores entries work?"},
                         @{FAQQuestionTitleKey : @"How does the Practice/Exercise entries work?"},
                         @{FAQQuestionTitleKey : @"How does the Other entries work?"},
                         ],
                 },
             @{
                 FAQSectionKey : @"How Do I...",
                 FAQQuestionsKey : @[
                         @{FAQQuestionTitleKey : @"How do I delete items from the test, other, essay, or project list"},
                         @{FAQQuestionTitleKey : @"How do I change the amount of work I did?"},
                         @{FAQQuestionTitleKey : @"How do I change the basic information of an entry?"},
                         @{FAQQuestionTitleKey : @"How do I change the special information of an entry?"},
                         ],
                 },
             @{
                 FAQSectionKey : @"Terms And Definitions",
                 FAQQuestionsKey : @[
                         @{FAQQuestionTitleKey : @"What is work divide?"},
                         @{FAQQuestionTitleKey : @"What do you mean by period?"},
                         ],
                 },
             @{
                 FAQSectionKey : @"What If...",
                 FAQQuestionsKey : @[
                         @{FAQQuestionTitleKey : @"What happens if I skip a period, or don't complete all the work I'm supposed to do?"},
                         @{FAQQuestionTitleKey : @"What if I want to do a different amount of work for that period?"},
                         @{FAQQuestionTitleKey : @"What if I have many tasks to put in when making an entry, but I don't want to type it all in?"},
                         @{FAQQuestionTitleKey : @"What if I don't want my entries to be automatically deleted when finished, or what if I want them to be deleted after a certain time?"},
                         ],
                 }
             
             
             ];
}

@end
