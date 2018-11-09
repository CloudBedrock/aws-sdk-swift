// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MediaStore
public enum MediaStoreErrorType: AWSErrorType {
    case containerInUseException(message: String?)
    case containerNotFoundException(message: String?)
    case policyNotFoundException(message: String?)
    case internalServerError(message: String?)
    case limitExceededException(message: String?)
    case corsPolicyNotFoundException(message: String?)
}

extension MediaStoreErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ContainerInUseException":
            self = .containerInUseException(message: message)
        case "ContainerNotFoundException":
            self = .containerNotFoundException(message: message)
        case "PolicyNotFoundException":
            self = .policyNotFoundException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "CorsPolicyNotFoundException":
            self = .corsPolicyNotFoundException(message: message)
        default:
            return nil
        }
    }
}