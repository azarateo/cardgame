//
//  PlayingCard.m
//  cardgame
//
//  Created by azarateo on 8/24/13.
//  Copyright (c) 2013 azarateo. All rights reserved.
//

#import "PlayingCard.h"


@implementation PlayingCard

//Lo que describe la carta se conforma de dos partes. El rango "rankStrings" y la pinga "suit"

//contents devuelve el rankString+suit dependiendo de la variable rank. Si el suit es ♦ y rank es 1 entrega "A♦", si rank es 11 entrega "J♦".
-(NSString *)contents{
  NSArray *rankStrings = [PlayingCard rankStrings];
  return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;//Debido a que creamos el setter y getter de suit (abajo) necesitamos sintetizar la variable
+(NSArray *)validSuits{
  return @[@"♠",@"♣",@"♥",@"♦"];
}//Definimos en el método de clase que define un arreglo de pintas (suits) válidas
-(void) setSuit:(NSString *)suit{
  
  if([[PlayingCard validSuits] containsObject:suit])
  {
    _suit = suit;
  }
  
}//Este es el getter que devuelve la pinta si esta definida dentro de los elementos de validSuits
+(NSArray *)rankStrings{return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];}//Método de clase con las pintas validas
-(NSString *)suit{
  return _suit ? _suit : @"?";
}//Devuelve la pinta (suit) si esta definida. Si no devuelve un signo de interrogación
+(NSUInteger)maxRank{return [self rankStrings].count-1;}//Método de clase que devuelve el máximo

-(void)setRank:(NSUInteger)rank{
  
  if(rank < [PlayingCard maxRank]){
    _rank = rank;
  }
  
}



@end
