//
//  GameManager.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "GameManager.h"


@implementation GameManager
@synthesize coinAmount=_coinAmount;

- (id) initWithCoint: (int) startingCoins
{
    

    
    self = [super init];
    if (self)
    {
        _coinAmount=startingCoins;
    }
    return self;
    
}

- (void) purchaseCoint: (int) numberOfCoins
{
    
    if (numberOfCoins>0) _coinAmount=_coinAmount+numberOfCoins;
    //return 0;
}
@end
