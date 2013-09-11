//
//  Deck.m
//  cardgame
//
//  Created by azarateo on 8/24/13.
//  Copyright (c) 2013 azarateo. All rights reserved.
//

#import "Deck.h"


//Métodos privados
@interface Deck()
//Propiedad privada. Arreglo de cartas
@property (strong, nonatomic) NSMutableArray *cards;
@end


///////////////////////////////////////////////////////////////

//Implementación de la clase Deck
@implementation Deck


//Inicialización del espacio en "Heap" de el arreglo cards. Esto evita enviar mensajes a una variable que no se ha iniciado
-(NSMutableArray *)cards{
  if(!_cards){
    //El init es un metodo de la propiedad alloc para un NSObject. En este caso devuelve el objeto de instancia de
    _cards = [[NSMutableArray alloc] init];
  }
  return _cards;
}




//Método para agregar una carta al Fajo "Deck"
-(void)addCard:(Card *)card atTop:(BOOL)atTop{
  
  //Si dice en lo más alto inserta el objeto al inicio
  if(atTop){
    [self.cards insertObject:card atIndex:0];
  }
  //Si no es así agrega el objeto al final
  else{
    [self.cards addObject:card];
  }
}




//Método para sacar una carta
-(Card *)drawRandomCard{
  
//Crea el espacio en memoria para la carta que va a sacar.
  Card *randomCard = nil;
  
  //Verifica que exista un valor diferente de cero para sacar la carta, si no no saca la carta y devuelve un cero (nil).
  if(self.cards.count){
    //Genera un entero aleatorio y hace módulo con el número de elementos en cards. Esto permite que quede un número aleatorio entre 0 y el número de cartas -1.
    unsigned index = arc4random() % self.cards.count;
    //Hace que la carta aleatoria (o el apuntador a ese espacio de memoria) sea la que corresponde a la pocisión calculada aleatoriamente en index
    randomCard = self.cards[index];
    //Saca la carta que metió en Random card.
    [self.cards removeObjectAtIndex:index];
    
    
  }
  return randomCard;
}

@end
