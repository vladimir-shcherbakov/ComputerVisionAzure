/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * An image caption, i.e. a brief description of what the image depicts.
 */
@interface CSCV_ImageTag : NSObject <AZCodable>
/**
 * The tag value.
 */
@property NSString *name;
/**
 * The level of confidence the service has in the caption.
 */
@property AZDouble *confidence;
/**
 * Optional categorization for the tag.
 */
@property NSString *hint;
@end
