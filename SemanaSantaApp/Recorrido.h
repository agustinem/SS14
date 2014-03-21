//
//  Recorrido.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 18/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Hermandades;

@interface Recorrido : NSManagedObject

@property (nonatomic, retain) NSString * hora;
@property (nonatomic, retain) NSString * lugar;
@property (nonatomic, retain) Hermandades *hermandadesD;

@end
