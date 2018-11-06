/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_OcrResult.h"

@implementation CSCV_OcrResult
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.language forKey:@"language"];
    [encoder encodeObject:self.textAngle forKey:@"textAngle"];
    [encoder encodeObject:self.orientation forKey:@"orientation"];
    [encoder encodeObject:self.regions forKey:@"regions"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _language = [decoder decodeObjectForKey:@"language" objectClass:[NSString class]];
        _textAngle = [decoder decodeObjectForKey:@"textAngle" objectClass:[AZDouble class]];
        _orientation = [decoder decodeObjectForKey:@"orientation" objectClass:[NSString class]];
        _regions = [decoder decodeArrayForKey:@"regions" elementClass:[CSCV_OcrRegion class]];
    }
    return self;
}
@end