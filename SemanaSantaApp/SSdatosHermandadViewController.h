//
//  SSdatosHermandadViewController.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 16/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SShermandadesViewController.h"
#import "SSdiasViewController.h"

@class Dias;
@class Hermandades;

@interface SSdatosHermandadViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *numeroH;
@property (weak, nonatomic) IBOutlet UILabel *bandaH;
@property (weak, nonatomic) IBOutlet UILabel *capatazH;

@property (nonatomic, strong) Hermandades *hermandadd;
@property (weak, nonatomic) IBOutlet UIButton *verRecorrido;
@property (weak, nonatomic) IBOutlet UIImageView *imagenHermandad;


@end
