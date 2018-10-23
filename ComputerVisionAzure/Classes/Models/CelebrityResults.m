/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CelebrityResults.h"

@implementation CelebrityResults

- (void)encodeWithCoder:(id<Coder>) encoder {

    [encoder encodeObject: self.celebrities forKey: @"celebrities"];
    [encoder encodeObject: self.requestId forKey: @"requestId"];
    [encoder encodeObject: self.metadata forKey: @"metadata"];

}

- (nullable instancetype)initWithDecoder:(id<Coder>)decoder {

    if (self = [super init]) {

        _celebrities = [decoder decodeArrayForKey:@"celebrities" elementClass:[CelebritiesModel class]];
        _requestId = [decoder decodeObjectForKey:@"requestId" objectClass:[NSString class]];
        _metadata = [decoder decodeObjectForKey:@"metadata" objectClass:[ImageMetadata class]];
    }

    return self;
}

@end