//
//  Patrocinador.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 21/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Patrocinador : NSManagedObject

@property (nonatomic, retain) NSNumber * idPA;
@property (nonatomic, retain) NSString * banner;
@property (nonatomic, retain) NSString * imagen;

@end
