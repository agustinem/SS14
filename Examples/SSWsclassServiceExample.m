/*
	SSWsclassServiceExample.m
	Provides example and test runs the service's proxy methods.
	Generated by SudzC.com
*/
#import "SSWsclassServiceExample.h"
#import "SSWsclassService.h"

@implementation SSWsclassServiceExample

- (void)run {
	// Create the service
	SSWsclassService* service = [SSWsclassService service];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
	

	// Returns SSArrayOfHermandad*
	/* Obtiene las hermandades */
	[service getHermandades:self action:@selector(getHermandadesHandler:) offset: 0];

	// Returns SSPatrocinadorWS*
	/* Obtiene el patrocinador si hay */
	[service getPatrocinador:self action:@selector(getPatrocinadorHandler:)];

	// Returns SSArrayOfPublicidad*
	/* Obtiene las publicidades */
	[service getPublicidades:self action:@selector(getPublicidadesHandler:) offset: 0];

	// Returns SSArrayOfRecorrido*
	/* Obtiene los recorridos */
	[service getRecorridos:self action:@selector(getRecorridosHandler:) offset: 0];
}

	

// Handle the response from getHermandades.
		
- (void) getHermandadesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the SSArrayOfHermandad* result
		SSArrayOfHermandad* result = (SSArrayOfHermandad*)value;
	NSLog(@"getHermandades returned the value: %@", result);
			
}
	

// Handle the response from getPatrocinador.
		
- (void) getPatrocinadorHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the SSPatrocinadorWS* result
		SSPatrocinadorWS* result = (SSPatrocinadorWS*)value;
	NSLog(@"getPatrocinador returned the value: %@", result);
			
}
	

// Handle the response from getPublicidades.
		
- (void) getPublicidadesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the SSArrayOfPublicidad* result
		SSArrayOfPublicidad* result = (SSArrayOfPublicidad*)value;
	NSLog(@"getPublicidades returned the value: %@", result);
			
}
	

// Handle the response from getRecorridos.
		
- (void) getRecorridosHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the SSArrayOfRecorrido* result
		SSArrayOfRecorrido* result = (SSArrayOfRecorrido*)value;
	NSLog(@"getRecorridos returned the value: %@", result);
			
}
	

@end
		