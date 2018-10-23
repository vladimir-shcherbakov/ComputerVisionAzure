/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "LandmarksModel.h"

@implementation LandmarksModel

- (void)encodeWithCoder:(id<Coder>) encoder {

    [encoder encodeObject: self.name forKey: @"name"];
    [encoder encodeObject: self.confidence forKey: @"confidence"];

}

- (nullable instancetype)initWithDecoder:(id<Coder>)decoder {

    if (self = [super init]) {

        _name = [decoder decodeObjectForKey:@"name" objectClass:[NSString class]];
        _confidence = [decoder decodeObjectForKey:@"confidence" objectClass:[AZDouble class]];
    }

    return self;
}

@end