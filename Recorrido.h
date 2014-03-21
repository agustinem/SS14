//
//  Recorrido.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 21/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Hermandades;

@interface Recorrido : NSManagedObject

@property (nonatomic, retain) NSString * hora;
@property (nonatomic, retain) NSString * lugar;
@property (nonatomic, retain) NSNumber * idHermandad;
@property (nonatomic, retain) Hermandades *hermandadesD;

@end
