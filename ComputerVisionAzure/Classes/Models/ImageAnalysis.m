/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "ImageAnalysis.h"

@implementation ImageAnalysis

- (void)encodeWithCoder:(id<Coder>) encoder {

    [encoder encodeObject: self.categories forKey: @"categories"];
    [encoder encodeObject: self.adult forKey: @"adult"];
    [encoder encodeObject: self.color forKey: @"color"];
    [encoder encodeObject: self.imageType forKey: @"imageType"];
    [encoder encodeObject: self.tags forKey: @"tags"];
    [encoder encodeObject: self.descriptionProperty forKey: @"description"];
    [encoder encodeObject: self.faces forKey: @"faces"];
    [encoder encodeObject: self.requestId forKey: @"requestId"];
    [encoder encodeObject: self.metadata forKey: @"metadata"];

}

- (nullable instancetype)initWithDecoder:(id<Coder>)decoder {

    if (self = [super init]) {

        _categories = [decoder decodeArrayForKey:@"categories" elementClass:[Category class]];
        _adult = [decoder decodeObjectForKey:@"adult" objectClass:[AdultInfo class]];
        _color = [decoder decodeObjectForKey:@"color" objectClass:[ColorInfo class]];
        _imageType = [decoder decodeObjectForKey:@"imageType" objectClass:[ImageType class]];
        _tags = [decoder decodeArrayForKey:@"tags" elementClass:[ImageTag class]];
        _descriptionProperty = [decoder decodeObjectForKey:@"description" objectClass:[ImageDescriptionDetails class]];
        _faces = [decoder decodeArrayForKey:@"faces" elementClass:[FaceDescription class]];
        _requestId = [decoder decodeObjectForKey:@"requestId" objectClass:[NSString class]];
        _metadata = [decoder decodeObjectForKey:@"metadata" objectClass:[ImageMetadata class]];
    }

    return self;
}

@end
