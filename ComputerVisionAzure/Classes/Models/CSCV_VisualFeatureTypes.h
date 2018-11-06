/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * Defines values for CSCV_VisualFeatureTypes.
 */
@interface CSCV_VisualFeatureTypes : NSObject <AZStringEnum>
+ (NSArray*)values;
+ (NSString *)toStringValue:(CSCV_VisualFeatureTypes *)value;
@property (class, readonly) CSCV_VisualFeatureTypes *IMAGE_TYPE;
@property (class, readonly) CSCV_VisualFeatureTypes *FACES;
@property (class, readonly) CSCV_VisualFeatureTypes *ADULT;
@property (class, readonly) CSCV_VisualFeatureTypes *CATEGORIES;
@property (class, readonly) CSCV_VisualFeatureTypes *COLOR;
@property (class, readonly) CSCV_VisualFeatureTypes *TAGS;
@property (class, readonly) CSCV_VisualFeatureTypes *DESCRIPTION;
@end
