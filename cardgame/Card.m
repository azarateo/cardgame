//
//  Card.m
//  cardgame
//
//  Created by azarateo on 8/24/13.
//  Copyright (c) 2013 azarateo. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card


-(int)match:(NSArray *)otherCards{
  int score = 0;
  
  for(Card *card in otherCards){
    if([card.contents isEqualToString:self.contents]){
      score++;
    }
  }
  
  return score;
}

@end
