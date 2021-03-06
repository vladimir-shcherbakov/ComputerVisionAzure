/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_ImageTag.h"
#import "CSCV_ImageMetadata.h"

/**
 * The results of a image tag operation, including any tags and image metadata.
 */
@interface CSCV_TagResult : NSObject <AZCodable>
/**
 * A list of tags with confidence level.
 */
@property NSArray<CSCV_ImageTag*> *tags;
/**
 * Id of the REST API request.
 */
@property NSString *requestId;
/**
 * The metadata property.
 */
@property CSCV_ImageMetadata *metadata;
@end
