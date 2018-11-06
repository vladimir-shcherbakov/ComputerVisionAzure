/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_OcrLine.h"

@implementation CSCV_OcrLine
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.boundingBox forKey:@"boundingBox"];
    [encoder encodeObject:self.words forKey:@"words"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _boundingBox = [decoder decodeObjectForKey:@"boundingBox" objectClass:[NSString class]];
        _words = [decoder decodeArrayForKey:@"words" elementClass:[CSCV_OcrWord class]];
    }
    return self;
}
@end