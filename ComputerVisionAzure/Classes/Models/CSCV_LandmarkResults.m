/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_LandmarkResults.h"

@implementation CSCV_LandmarkResults
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.landmarks forKey:@"landmarks"];
    [encoder encodeObject:self.requestId forKey:@"requestId"];
    [encoder encodeObject:self.metadata forKey:@"metadata"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _landmarks = [decoder decodeArrayForKey:@"landmarks" elementClass:[CSCV_LandmarksModel class]];
        _requestId = [decoder decodeObjectForKey:@"requestId" objectClass:[NSString class]];
        _metadata = [decoder decodeObjectForKey:@"metadata" objectClass:[CSCV_ImageMetadata class]];
    }
    return self;
}
@end