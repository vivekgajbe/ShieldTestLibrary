//
//  GetDeviceInfo.swift
//  ShieldTestSDK
//
//  Created by vivek on 25/02/25.
//

import Foundation
import UIKit

import AdSupport

struct DeviceInfo {
    static func getIdentifiers() -> [String: String] {
        let idfv = UIDevice.current.identifierForVendor?.uuidString ?? "Unknown"
        
        let idfa = ASIdentifierManager.shared().isAdvertisingTrackingEnabled ?
            ASIdentifierManager.shared().advertisingIdentifier.uuidString :
            "Tracking Disabled"
        
        let uuid = UUID().uuidString  // Random UUID for session tracking
        
        return ["IDFV": idfv, "IDFA": idfa, "UUID": uuid]
    }
}
