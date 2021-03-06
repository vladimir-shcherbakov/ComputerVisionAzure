/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_Category.h"

@implementation CSCV_Category
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.name forKey:@"name"];
    [encoder encodeObject:self.score forKey:@"score"];
    [encoder encodeObject:self.detail forKey:@"detail"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _name = [decoder decodeObjectForKey:@"name" objectClass:[NSString class]];
        _score = [decoder decodeObjectForKey:@"score" objectClass:[AZDouble class]];
        _detail = [decoder decodeObjectForKey:@"detail" objectClass:[CSCV_CategoryDetail class]];
    }
    return self;
}
@end
