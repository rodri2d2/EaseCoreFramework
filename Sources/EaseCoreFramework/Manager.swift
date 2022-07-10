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
        
        private let session = URLSession.shared
        
        public init() {}
        
        
        public func loadData(from url: URL, completionHandler: @escaping (NetworkResult<Data>) -> Void) {
            let task = session.dataTask(with: url) { data, response, error in
                let result = data.map(NetworkResult<Data>.success) ?? .failure(error)
                completionHandler(result)
            }
            
            task.resume()
        }
        
    }
}
