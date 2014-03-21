//
//  Dias.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 18/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Hermandades;

@interface Dias : NSManagedObject

@property (nonatomic, retain) NSString * nombreDia;
@property (nonatomic, retain) NSNumber * ordenDia;
@property (nonatomic, retain) NSSet *hermandades;
@end

@interface Dias (CoreDataGeneratedAccessors)

- (void)addHermandadesObject:(Hermandades *)value;
- (void)removeHermandadesObject:(Hermandades *)value;
- (void)addHermandades:(NSSet *)values;
- (void)removeHermandades:(NSSet *)values;

@end
