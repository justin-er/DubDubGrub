//
//  CloudKitManager.swift
//  DubDubGrub
//
//  Created by Sean Allen on 5/26/21.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocations(completed: @escaping (Result<[DDGLocation], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.fetch(withQuery: query) { result in
            switch result {
            case let .success((matchResults, _)):
                let locations = matchResults.compactMap { (_, recordResult) in
                    switch recordResult {
                    case .success(let record):
                        return record.convertToDDGLocation()
                    case .failure(_):
                        return nil
                    }
                }
                completed(.success(locations))
            case let .failure(error):
                completed(.failure(error))
            }
        }
    }
}
