/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_ComputerVisionError.h"

@implementation CSCV_ComputerVisionError
- (id) initWithCode:(CSCV_ComputerVisionErrorCodes *)code withmessage:(NSString *)message {
    self = [super init];
    if (self) {
        _code = code;
        _message = message;
    }
    return self;
}
- (void)encodeWithCoder:(id<AZCoder>)encoder {

    [encoder encodeObject:self.code forKey:@"code"];
    [encoder encodeObject:self.message forKey:@"message"];
    [encoder encodeObject:self.requestId forKey:@"requestId"];
}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _code = [decoder decodeObjectForKey:@"code" objectClass:[CSCV_ComputerVisionErrorCodes class]];
        _message = [decoder decodeObjectForKey:@"message" objectClass:[NSString class]];
        _requestId = [decoder decodeObjectForKey:@"requestId" objectClass:[NSString class]];
    }
    return self;
}
@end
