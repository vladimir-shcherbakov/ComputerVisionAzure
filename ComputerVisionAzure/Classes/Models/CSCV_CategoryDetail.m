/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_CategoryDetail.h"

@implementation CSCV_CategoryDetail
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.celebrities forKey:@"celebrities"];
    [encoder encodeObject:self.landmarks forKey:@"landmarks"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _celebrities = [decoder decodeArrayForKey:@"celebrities" elementClass:[CSCV_CelebritiesModel class]];
        _landmarks = [decoder decodeArrayForKey:@"landmarks" elementClass:[CSCV_LandmarksModel class]];
    }
    return self;
}
@end