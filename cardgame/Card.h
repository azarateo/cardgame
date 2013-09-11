//
//  Card.h
//  cardgame
//
//  Created by azarateo on 8/24/13.
//  Copyright (c) 2013 azarateo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic) BOOL faceUp;
@property (nonatomic) BOOL unplayable;

-(int)match:(NSArray *)othercards;

@end
