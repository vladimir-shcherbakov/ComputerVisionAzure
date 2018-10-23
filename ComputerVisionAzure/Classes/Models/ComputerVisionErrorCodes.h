/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime-umbrella.h>

/**
 * Defines values for ComputerVisionErrorCodes.
 */
@interface ComputerVisionErrorCodes : NSString <StringEnum>

    + (NSArray*) values;

    @property (class, readonly) ComputerVisionErrorCodes* INVALID_IMAGE_URL;
    @property (class, readonly) ComputerVisionErrorCodes* INVALID_IMAGE_FORMAT;
    @property (class, readonly) ComputerVisionErrorCodes* INVALID_IMAGE_SIZE;
    @property (class, readonly) ComputerVisionErrorCodes* NOT_SUPPORTED_VISUAL_FEATURE;
    @property (class, readonly) ComputerVisionErrorCodes* NOT_SUPPORTED_IMAGE;
    @property (class, readonly) ComputerVisionErrorCodes* INVALID_DETAILS;
    @property (class, readonly) ComputerVisionErrorCodes* NOT_SUPPORTED_LANGUAGE;
    @property (class, readonly) ComputerVisionErrorCodes* BAD_ARGUMENT;
    @property (class, readonly) ComputerVisionErrorCodes* FAILED_TO_PROCESS;
    @property (class, readonly) ComputerVisionErrorCodes* TIMEOUT;
    @property (class, readonly) ComputerVisionErrorCodes* INTERNAL_SERVER_ERROR;
    @property (class, readonly) ComputerVisionErrorCodes* UNSPECIFIED;
    @property (class, readonly) ComputerVisionErrorCodes* STORAGE_EXCEPTION;

@end
