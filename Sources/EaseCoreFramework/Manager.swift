//
//  Manager.swift
//  EaseCoreFramework
//
//  Created by Rodrigo  Candido on 10/7/22.
//

import Foundation

extension EaseCore.Networking {
    
    
    /// Responsible for all networking calls
    /// - Warning: Must be created before using any public APIs
    public class Manager {
        
        internal var session: NetworkSession = URLSession.shared
        
        public init() {}
        
        
        /// Retrieve Data from a specific location
        /// - Parameters:
        ///   - url: Location to fetch Data from - Type of URL()
        ///   - completionHandler: Returns a result object which signifies the status os the request
        public func loadData(from url: URL, completionHandler: @escaping (NetworkResult<Data>) -> Void) {
            session.get(from: url) { data, error in
                let result = data.map(NetworkResult<Data>.success) ?? .failure(error)
                completionHandler(result)
            }
        }
        
    }
}
