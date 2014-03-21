//
//  Hermandades.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 18/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Dias;

@interface Hermandades : NSManagedObject

@property (nonatomic, retain) NSString * bandaH;
@property (nonatomic, retain) NSString * capatazH;
@property (nonatomic, retain) NSString * nombreH;
@property (nonatomic, retain) NSNumber * numeroH;
@property (nonatomic, retain) NSString * descripcionH;
@property (nonatomic, retain) NSString * imagenH;
@property (nonatomic, retain) Dias *dias;
@property (nonatomic, retain) NSSet *recorridos;
@end

@interface Hermandades (CoreDataGeneratedAccessors)

- (void)addRecorridosObject:(NSManagedObject *)value;
- (void)removeRecorridosObject:(NSManagedObject *)value;
- (void)addRecorridos:(NSSet *)values;
- (void)removeRecorridos:(NSSet *)values;

@end
