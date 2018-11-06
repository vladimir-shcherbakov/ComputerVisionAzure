/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_ImageDescription.h"

@implementation CSCV_ImageDescription
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.tags forKey:@"description.tags"];
    [encoder encodeObject:self.captions forKey:@"description.captions"];
    [encoder encodeObject:self.requestId forKey:@"requestId"];
    [encoder encodeObject:self.metadata forKey:@"metadata"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _tags = [decoder decodeArrayForKey:@"description.tags" elementClass:[NSString class]];
        _captions = [decoder decodeArrayForKey:@"description.captions" elementClass:[CSCV_ImageCaption class]];
        _requestId = [decoder decodeObjectForKey:@"requestId" objectClass:[NSString class]];
        _metadata = [decoder decodeObjectForKey:@"metadata" objectClass:[CSCV_ImageMetadata class]];
    }
    return self;
}
@end