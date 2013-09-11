//
//  Deck.h
//  cardgame
//
//  Created by azarateo on 8/24/13.
//  Copyright (c) 2013 azarateo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

//Método para agregar una carta al Fajo "Deck"
-(void)addCard:(Card *)card atTop:(BOOL)atTop;
//Método para sacar una carta
-(Card *)drawRandomCard;

@end
