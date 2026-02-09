//
// Created by Roshan Bade on 09/02/2026.
//

import Foundation
import CryptoSwift

@objc public final class CryptoWrapper: NSObject {

    @objc public static func sha256(_ input: String) -> String {
        let bytes = Array(input.utf8)
        return bytes.sha256().toHexString()
    }

    @objc public static func hmacSHA256(
        message: String,
        key: String
    ) -> String {
        let hmac = try! HMAC(
            key: Array(key.utf8),
            variant: .sha256
        ).authenticate(Array(message.utf8))

        return hmac.toHexString()
    }
}