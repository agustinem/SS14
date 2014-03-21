//
//  Publicidad.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 21/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Hermandad;

@interface Publicidad : NSManagedObject

@property (nonatomic, retain) NSDate * horaDesde;
@property (nonatomic, retain) NSDate * horaHasta;
@property (nonatomic, retain) NSString * idHermandad;
@property (nonatomic, retain) NSNumber * idP;
@property (nonatomic, retain) NSNumber * nivel;
@property (nonatomic, retain) NSNumber * pesoF;
@property (nonatomic, retain) NSNumber * pesoI;
@property (nonatomic, retain) NSString * texto;
@property (nonatomic, retain) NSString * tipo;
@property (nonatomic, retain) Hermandad *hermandad;

@end
