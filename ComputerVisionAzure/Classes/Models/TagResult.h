/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime-umbrella.h>
#import "ImageTag.h"
#import "ImageMetadata.h"

/**
 * The results of a image tag operation, including any tags and image metadata.
*/
@interface TagResult : NSObject <Codable>

    /**
     * A list of tags with confidence level.
    */
    // json "tags"
    @property  NSArray<ImageTag*>* tags;

    /**
     * Id of the REST API request.
    */
    // json "requestId"
    @property  NSString* requestId;

    /**
     * The metadata property.
    */
    // json "metadata"
    @property  ImageMetadata* metadata;


@end