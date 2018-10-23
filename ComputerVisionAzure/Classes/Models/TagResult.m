/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "TagResult.h"

@implementation TagResult

- (void)encodeWithCoder:(id<Coder>) encoder {

    [encoder encodeObject: self.tags forKey: @"tags"];
    [encoder encodeObject: self.requestId forKey: @"requestId"];
    [encoder encodeObject: self.metadata forKey: @"metadata"];

}

- (nullable instancetype)initWithDecoder:(id<Coder>)decoder {

    if (self = [super init]) {

        _tags = [decoder decodeArrayForKey:@"tags" elementClass:[ImageTag class]];
        _requestId = [decoder decodeObjectForKey:@"requestId" objectClass:[NSString class]];
        _metadata = [decoder decodeObjectForKey:@"metadata" objectClass:[ImageMetadata class]];
    }

    return self;
}

@end