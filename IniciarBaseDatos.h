//
//  IniciarBaseDatos.h
//  SemanaSantaApp
//
//  Created by Jose Maria on 21/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IniciarBaseDatos : NSManagedObject

- (void) insertaPublicidad;
- (void) insertaHermandad;
- (void) insertaPatrocinio;
- (void) insertaRecorrido;
- (void) reiniciaPublicidad;

- (void) getPublicidadFechaDesde:(NSString*)desde horaHasta:(NSString*)hasta;

@end
