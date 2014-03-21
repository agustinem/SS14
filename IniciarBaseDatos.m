//
//  IniciarBaseDatos.m
//  SemanaSantaApp
//
//  Created by Jose Maria on 21/03/14.
//  Copyright (c) 2014 Kometasoft. All rights reserved.
//

#import "IniciarBaseDatos.h"

@implementation IniciarBaseDatos

- (void)insertaHermandad {
    
    //TODO array hermandad
    
for(int i = 0; i< [array count]; i++){
        Hermandad *hermandadX = [NSEntityDescription insertNewObjectForEntityForName:@"Hermandad" inManagedObjectContext:context];
        HermandadWS * hermandadWS = [array objectAtIndex:i];
        hermandadX.nombre = hermandadWS.nombre;
        hermandadX.idH=hermandadWS.idH;
        hermandadX.diaSalida=hermandadWS.diaSalida;
        hermandadX.hermanos=hermandadWS.hermanos;
        hermandadX.banda=hermandadWS.banda;
        hermandadX.capataz=hermandadWS.capataz;
        hermandadX.descripcion=hermandadWS.descripcion;
        hermandadX.imagen=hermandadWS.imagen;
        
        if (![context save:&error]) {
            NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
            
        }
        
    }
    

- (void) insertaPublicidad{
    
    for(int i = 0; i< [array count]; i++){
        Publicidad *publicidadX = [NSEntityDescription insertNewObjectForEntityForName:@"Publicidad" inManagedObjectContext:context];
        PublicidadWS * publicidadWS = [array objectAtIndex:i];
        publicidadX.idP = publicidadWS.idP;
        publicidadX.texto = publicidadWS.texto;
        publicidadX.nivel = publicidadWS.nivel;
        publicidadX.pesoI = publicidadWS.pesoI;
        publicidadX.pesoF = publicidadWS.pesoF;
        publicidadX.tipo = publicidadWS.tipo;
        publicidadX.idHermandad = publicidadWS.idHermandad;
        publicidadX.horaDesde = publicidadWS.horaDesde;
        publicidadX.horaHasta = publicidadWS.horaHasta;
        
        if (![context save:&error]) {
            NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
        }

    }
    
}

    -(void) insertaRecorrido{
    for(int i = 0; i< [array count]; i++){
        Recorrido *recorridoX = [NSEntityDescription insertNewObjectForEntityForName:@"Recorrido" inManagedObjectContext:context];
        RecorridoWS * recorridoWS = [array objectAtIndex:i];
        recorridoX.idHermandad = recorridoWS.idHermandad;
        recorridoX.hora = recorridoWS.hora;
        recorridoX.lugar = recorridoWS.lugar;
        
        
        if (![context save:&error]) {
            NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
        }
    }
    
}
    
    -(void) insertaPatrocinio{
        for(int i = 0; i< [array count]; i++){
            Publicidad *publicidadX = [NSEntityDescription insertNewObjectForEntityForName:@"Publicidad" inManagedObjectContext:context];
            PublicidadWS * publicidadWS = [array objectAtIndex:i];
            publicidadX.idP = publicidadWS.idP;
            publicidadX.texto = publicidadWS.texto;
            publicidadX.nivel = publicidadWS.nivel;
            publicidadX.pesoI = publicidadWS.pesoI;
            publicidadX.pesoF = publicidadWS.pesoF;
            publicidadX.tipo = publicidadWS.tipo;
            publicidadX.idHermandad = publicidadWS.idHermandad;
            publicidadX.horaDesde = publicidadWS.horaDesde;
            publicidadX.horaHasta = publicidadWS.horaHasta;
            
            if (![context save:&error]) {
                NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
            }

        
    }
        
    }
    
    
    -(void) reiniciaPublicidad{
        
    }
    
    - (void) getPublicidadFechaDesde:(NSString*)desde horaHasta:(NSString*)hasta{
        
        
        
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Publicidad"];
        request.predicate = [NSPredicate predicateWithFormat:@"ANY tipo =[cd] %@", self.tipo];
        
        
        
        

    
    
    }
}
@end
