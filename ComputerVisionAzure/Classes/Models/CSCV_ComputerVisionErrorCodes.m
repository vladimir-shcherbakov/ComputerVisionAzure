/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSCV_ComputerVisionErrorCodes.h"

/**
 * Defines values for CSCV_ComputerVisionErrorCodes.
 */
@implementation CSCV_ComputerVisionErrorCodes
+ (NSArray*)values {
    static NSArray *allValues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        allValues = @[
            @"InvalidImageUrl",
            @"InvalidImageFormat",
            @"InvalidImageSize",
            @"NotSupportedVisualFeature",
            @"NotSupportedImage",
            @"InvalidDetails",
            @"NotSupportedLanguage",
            @"BadArgument",
            @"FailedToProcess",
            @"Timeout",
            @"InternalServerError",
            @"Unspecified",
            @"StorageException"
        ];
    });
    return allValues;
}
/** Enum value InvalidImageUrl. */
+ (CSCV_ComputerVisionErrorCodes*)INVALID_IMAGE_URL {
    return [CSCV_ComputerVisionErrorCodes values][0];
}
/** Enum value InvalidImageFormat. */
+ (CSCV_ComputerVisionErrorCodes*)INVALID_IMAGE_FORMAT {
    return [CSCV_ComputerVisionErrorCodes values][1];
}
/** Enum value InvalidImageSize. */
+ (CSCV_ComputerVisionErrorCodes*)INVALID_IMAGE_SIZE {
    return [CSCV_ComputerVisionErrorCodes values][2];
}
/** Enum value NotSupportedVisualFeature. */
+ (CSCV_ComputerVisionErrorCodes*)NOT_SUPPORTED_VISUAL_FEATURE {
    return [CSCV_ComputerVisionErrorCodes values][3];
}
/** Enum value NotSupportedImage. */
+ (CSCV_ComputerVisionErrorCodes*)NOT_SUPPORTED_IMAGE {
    return [CSCV_ComputerVisionErrorCodes values][4];
}
/** Enum value InvalidDetails. */
+ (CSCV_ComputerVisionErrorCodes*)INVALID_DETAILS {
    return [CSCV_ComputerVisionErrorCodes values][5];
}
/** Enum value NotSupportedLanguage. */
+ (CSCV_ComputerVisionErrorCodes*)NOT_SUPPORTED_LANGUAGE {
    return [CSCV_ComputerVisionErrorCodes values][6];
}
/** Enum value BadArgument. */
+ (CSCV_ComputerVisionErrorCodes*)BAD_ARGUMENT {
    return [CSCV_ComputerVisionErrorCodes values][7];
}
/** Enum value FailedToProcess. */
+ (CSCV_ComputerVisionErrorCodes*)FAILED_TO_PROCESS {
    return [CSCV_ComputerVisionErrorCodes values][8];
}
/** Enum value Timeout. */
+ (CSCV_ComputerVisionErrorCodes*)TIMEOUT {
    return [CSCV_ComputerVisionErrorCodes values][9];
}
/** Enum value InternalServerError. */
+ (CSCV_ComputerVisionErrorCodes*)INTERNAL_SERVER_ERROR {
    return [CSCV_ComputerVisionErrorCodes values][10];
}
/** Enum value Unspecified. */
+ (CSCV_ComputerVisionErrorCodes*)UNSPECIFIED {
    return [CSCV_ComputerVisionErrorCodes values][11];
}
/** Enum value StorageException. */
+ (CSCV_ComputerVisionErrorCodes*)STORAGE_EXCEPTION {
    return [CSCV_ComputerVisionErrorCodes values][12];
}
+ (CSCV_ComputerVisionErrorCodes *)fromString:(NSString *)string {
    if (![[CSCV_ComputerVisionErrorCodes values]containsObject:string]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"The string is not the enum member" userInfo:nil];
    }
    return (CSCV_ComputerVisionErrorCodes *)string;
}
+ (NSString *)toStringValue:(CSCV_ComputerVisionErrorCodes *)value {
    if (![[CSCV_ComputerVisionErrorCodes values]containsObject:value]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"Enum value doesn't exist" userInfo:nil];
    }
    return (NSString *)value;
}
@end
