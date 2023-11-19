//
//  CKRecord+TestData.swift
//  DubDubGrub
//
//  Created by Justin on 29.10.23.
//

import Foundation
import CloudKit

#warning("I'm here. There is a problem regarding this default instance. I haven't passed the assets and it crashes in preview for force unwrapping in DDGLocation default test data")

#if DEBUG
extension CKRecord {
    enum TestData {
        static let `default`: CKRecord = {
            let record = CKRecord(recordType: DDGLocation.Constants.recordType)
            record[DDGLocation.Constants.name] = "Justin's Bars and Grills"
            record[DDGLocation.Constants.address] = "123 Unterschleißheim 85716"
            record[DDGLocation.Constants.description] = "This is the test description. Isn't it awsome. Not sure how long to make it to test the three lines."
            record[DDGLocation.Constants.website] = "https://codedstuff.com"
            record[DDGLocation.Constants.location] = CLLocation(
                latitude: 37.33,
                longitude: -121.89
            )
            record[DDGLocation.Constants.phoneNumber] =  "01529122772018"
            
            return record
        }()

    }
}
#endif
