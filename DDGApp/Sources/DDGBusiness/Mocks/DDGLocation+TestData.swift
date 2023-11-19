//
//  DDGLocation+TestData.swift
//  DubDubGrub
//
//  Created by Justin on 09.09.23.
//

import Foundation
import CloudKit
import CoreLocation

#if DEBUG
public extension DDGLocation {
    enum TestData {
        public static let `default` = DDGLocation(record: CKRecord.TestData.default)
    }
}
#endif
