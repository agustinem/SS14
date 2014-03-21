/*
	SSArrayOfHermandad.h
	The interface definition of properties and methods for the SSArrayOfHermandad object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SSArrayOfHermandadws;

@interface SSArrayOfHermandad : SoapObject
{
	NSMutableArray* _hermandades;
	
}
		
	@property (retain, nonatomic) NSMutableArray* hermandades;

	+ (SSArrayOfHermandad*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
