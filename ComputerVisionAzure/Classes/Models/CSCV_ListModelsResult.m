/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_ListModelsResult.h"

@implementation CSCV_ListModelsResult
    - (id) initWithmodelsProperty:(NSArray<CSCV_ModelDescription*> *)modelsProperty {
        self = [super init];
        if (self) {
            _modelsProperty = modelsProperty;
        }
        return self;
    }
- (void)encodeWithCoder:(id<AZCoder>)encoder {

}
- (nullable instancetype)initWithDecoder:(id<AZCoder>)decoder {

    if (self = [super init]) {
        _modelsProperty = [decoder decodeArrayForKey:@"models" elementClass:[CSCV_ModelDescription class]];
    }
    return self;
}
@end