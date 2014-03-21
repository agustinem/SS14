//
//  Publicidad.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 18/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Publicidad : NSManagedObject

@property (nonatomic, retain) NSString * texto;
@property (nonatomic, retain) NSNumber * nivel;
@property (nonatomic, retain) NSNumber * peso;

@end
