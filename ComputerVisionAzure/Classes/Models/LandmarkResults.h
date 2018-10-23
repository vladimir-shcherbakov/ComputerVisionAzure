/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime-umbrella.h>
#import "LandmarksModel.h"
#import "ImageMetadata.h"

/**
 * List of landmarks recognized in the image.
*/
@interface LandmarkResults : NSObject <Codable>

    /**
     * The landmarks property.
    */
    // json "landmarks"
    @property  NSArray<LandmarksModel*>* landmarks;

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