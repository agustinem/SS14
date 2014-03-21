//
//  Hermandad.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 21/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Publicidad, Recorrido;

@interface Hermandad : NSManagedObject

@property (nonatomic, retain) NSString * banda;
@property (nonatomic, retain) NSString * capataz;
@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) NSString * imagen;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSNumber * hermanos;
@property (nonatomic, retain) NSNumber * idH;
@property (nonatomic, retain) NSString * diaSalida;
@property (nonatomic, retain) NSSet *recorridos;
@property (nonatomic, retain) NSSet *publicidad;
@end

@interface Hermandad (CoreDataGeneratedAccessors)

- (void)addRecorridosObject:(Recorrido *)value;
- (void)removeRecorridosObject:(Recorrido *)value;
- (void)addRecorridos:(NSSet *)values;
- (void)removeRecorridos:(NSSet *)values;

- (void)addPublicidadObject:(Publicidad *)value;
- (void)removePublicidadObject:(Publicidad *)value;
- (void)addPublicidad:(NSSet *)values;
- (void)removePublicidad:(NSSet *)values;

@end
