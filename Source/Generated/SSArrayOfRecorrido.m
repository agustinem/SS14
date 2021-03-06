/*
	SSArrayOfRecorrido.h
	The implementation of properties and methods for the SSArrayOfRecorrido object.
	Generated by SudzC.com
*/
#import "SSArrayOfRecorrido.h"

#import "SSArrayOfRecorridows.h"
@implementation SSArrayOfRecorrido
	@synthesize recorridos = _recorridos;

	- (id) init
	{
		if(self = [super init])
		{
			self.recorridos = [[NSMutableArray alloc] init];

		}
		return self;
	}

	+ (SSArrayOfRecorrido*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return [[self alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.recorridos = [[SSArrayOfRecorridows createWithNode: [Soap getNode: node withName: @"recorridos"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArrayOfRecorrido"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.recorridos != nil && self.recorridos.count > 0) {
			[s appendFormat: @"<recorridos>%@</recorridos>", [SSArrayOfRecorridows serialize: self.recorridos]];
		} else {
			[s appendString: @"<recorridos/>"];
		}

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SSArrayOfRecorrido class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
