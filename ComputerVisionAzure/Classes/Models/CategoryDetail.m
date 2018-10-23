/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CategoryDetail.h"

@implementation CategoryDetail

- (void)encodeWithCoder:(id<Coder>) encoder {

    [encoder encodeObject: self.celebrities forKey: @"celebrities"];
    [encoder encodeObject: self.landmarks forKey: @"landmarks"];

}

- (nullable instancetype)initWithDecoder:(id<Coder>)decoder {

    if (self = [super init]) {

        _celebrities = [decoder decodeArrayForKey:@"celebrities" elementClass:[CelebritiesModel class]];
        _landmarks = [decoder decodeArrayForKey:@"landmarks" elementClass:[LandmarksModel class]];
    }

    return self;
}

@end
