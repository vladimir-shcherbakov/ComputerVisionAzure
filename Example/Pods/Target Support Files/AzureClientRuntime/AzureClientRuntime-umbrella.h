#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AzureDate.h"
#import "AzureTypes.h"
#import "Codable.h"
#import "Coder.h"
#import "DefaultErrorModel.h"
#import "JsonCoder.h"
#import "OperationError.h"
#import "RequestHelper.h"
#import "RequestParameters.h"

FOUNDATION_EXPORT double AzureClientRuntimeVersionNumber;
FOUNDATION_EXPORT const unsigned char AzureClientRuntimeVersionString[];

