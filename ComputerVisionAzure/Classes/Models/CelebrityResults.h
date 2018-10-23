/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime-umbrella.h>
#import "CelebritiesModel.h"
#import "ImageMetadata.h"

/**
 * List of celebrities recognized in the image.
*/
@interface CelebrityResults : NSObject <Codable>

    /**
     * The celebrities property.
    */
    // json "celebrities"
    @property  NSArray<CelebritiesModel*>* celebrities;

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