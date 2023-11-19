//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Justin on 03.09.23.
//

import CloudKit

public struct DDGLocation {
    public enum Constants {
        public static let recordType   = "DDGLocation"
        public static let recordID     = "ckRecordID"
        public static let name         = "name"
        public static let description  = "description"
        public static let squareAsset  = "squareAsset"
        public static let bannerAsset  = "bannerAsset"
        public static let address      = "address"
        public static let location     = "location"
        public static let website      = "website"
        public static let phoneNumber  = "phoneNumber"
    }
    
    public let recordID: CKRecord.ID
    public let name: String
    public let description: String
    public let squareAsset: CKAsset?
    public let bannerAsset: CKAsset?
    public let address: String
    public let location: CLLocation
    public let website: String
    public let phoneNumber: String
    
    public init(record: CKRecord) {
        recordID    = record.recordID
        name        = record[Constants.name] as! String
        description = record[Constants.description] as! String
        squareAsset = record[Constants.squareAsset] as? CKAsset
        bannerAsset = record[Constants.bannerAsset] as? CKAsset
        address     = record[Constants.address] as! String
        location    = record[Constants.location] as! CLLocation
        website     = record[Constants.website] as! String
        phoneNumber = record[Constants.phoneNumber] as! String
    }
        
    public init(
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
