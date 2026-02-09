//
// Created by Roshan Bade on 09/02/2026.
//

import Foundation
import CryptoSwift

@objc public class CryptoWrapper: NSObject {
    @objc public static func sha256(_ input: String) -> String {
        input.bytes.sha256().toHexString()
    }
}