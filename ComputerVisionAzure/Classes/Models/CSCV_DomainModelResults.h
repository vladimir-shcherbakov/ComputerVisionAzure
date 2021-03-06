/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_ImageMetadata.h"

/**
 * Result of image analysis using a specific domain model including additional
 * metadata.
 */
@interface CSCV_DomainModelResults : NSObject <AZCodable>
/**
 * Model-specific response.
 */
@property NSObject *result;
/**
 * Id of the REST API request.
 */
@property NSString *requestId;
/**
 * The metadata property.
 */
@property CSCV_ImageMetadata *metadata;
@end
