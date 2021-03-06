/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_ImageType.h"

@implementation CSCV_ImageType
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.clipArtType forKey:@"clipArtType"];
    [encoder encodeObject:self.lineDrawingType forKey:@"lineDrawingType"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _clipArtType = [decoder decodeObjectForKey:@"clipArtType" objectClass:[AZInteger class]];
        _lineDrawingType = [decoder decodeObjectForKey:@"lineDrawingType" objectClass:[AZInteger class]];
    }
    return self;
}
@end
