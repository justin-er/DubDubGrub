//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Justin on 03.09.23.
//

import CloudKit

struct DDGLocation {
    enum Constants {
        static let recordID     = "ckRecordID"
        static let name         = "name"
        static let description  = "description"
        static let squareAsset  = "squareAsset"
        static let bannerAsset  = "bannerAsset"
        static let address      = "address"
        static let location     = "location"
        static let website      = "website"
        static let phoneNumber  = "phoneNumber"
    }
    
    let recordID: CKRecord.ID
    let name: String
    let description: String
    let squareAsset: CKAsset
    let bannerAsset: CKAsset
    let address: String
    let location: CLLocation
    let website: String
    let phoneNumber: String
    
    init(record: CKRecord) {
        recordID    = record.recordID
        name        = record[Constants.name] as! String
        description = record[Constants.description] as! String
        squareAsset = record[Constants.squareAsset] as! CKAsset
        bannerAsset = record[Constants.bannerAsset] as! CKAsset
        address     = record[Constants.address] as! String
        location    = record[Constants.location] as! CLLocation
        website     = record[Constants.website] as! String
        phoneNumber = record[Constants.phoneNumber] as! String
    }
        
    init(
        recordID: CKRecord.ID,
        name: String,
        description: String,
        squareAsset: CKAsset,
        bannerAsset: CKAsset,
        address: String,
        location: CLLocation,
        website: String,
        phoneNumber: String
    ) {
        self.recordID       = recordID
        self.name           = name
        self.description    = description
        self.squareAsset    = squareAsset
        self.bannerAsset    = bannerAsset
        self.address        = address
        self.location       = location
        self.website        = website
        self.phoneNumber    = phoneNumber
    }
}
