//
//  SSrecorridoViewController.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 17/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SShermandadesTableViewController.h"
#import "SSdiasTableViewController.h"

@class Dias;
@class Hermandades;
@class Recorrido;


@interface SSrecorridoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *hora;
@property (weak, nonatomic) IBOutlet UILabel *lugar;
@property (nonatomic, strong) Recorrido *recorridoo;

@end
