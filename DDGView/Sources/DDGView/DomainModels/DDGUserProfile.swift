//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Justin on 03.09.23.
//

import CloudKit

struct DDGUserProfile {
    
    enum Constants {
        static let recordID     = "recordID"
        static let avatar       = "avatar"
        static let firstName    = "firstName"
        static let lastName     = "lastName"
        static let bio          = "bio"
        static let companyName  = "companyName"
        static let isCheckedIn  = "isCheckedIn"
    }
    
    let recordID: CKRecord.ID
    let avatar: CKAsset
    let firstName: String
    let lastName: String
    let bio: String
    let companyName: String
    let isCheckedIn: CKRecord.Reference?
    
    init(record: CKRecord) {
        recordID    = record.recordID
        avatar      = record[Constants.avatar] as! CKAsset
        firstName   = record[Constants.firstName] as! String
        lastName    = record[Constants.lastName] as! String
        bio         = record[Constants.bio] as! String
        companyName = record[Constants.companyName] as! String
        isCheckedIn = record[Constants.isCheckedIn] as? CKRecord.Reference
    }
 
    internal init(
        recordID: CKRecord.ID,
        avatar: CKAsset,
        firstName: String,
        lastName: String,
        bio: String,
        companyName: String,
        isCheckedIn: CKRecord.Reference? = nil
    ) {
        self.recordID = recordID
        self.avatar = avatar
        self.firstName = firstName
        self.lastName = lastName
        self.bio = bio
        self.companyName = companyName
        self.isCheckedIn = isCheckedIn
    }
}
