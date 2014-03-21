/*
	SSRecorridoWS.h
	The interface definition of properties and methods for the SSRecorridoWS object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SSRecorridoWS : SoapObject
{
	int __id;
	int _idHermandad;
	NSString* _hora;
	NSString* _lugar;
	
}
		
	@property int _id;
	@property int idHermandad;
	@property (retain, nonatomic) NSString* hora;
	@property (retain, nonatomic) NSString* lugar;

	+ (SSRecorridoWS*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end