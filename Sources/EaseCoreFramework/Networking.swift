//
//  Networking.swift
//  EaseCoreFramework
//
//  Created by Rodrigo  Candido on 9/7/22.
//

import Foundation

protocol NetworkSession {
    func get(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void)
}

extension URLSession: NetworkSession {
    func get(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void) {
        let task = dataTask(with: url) {data, response, error in
            completionHandler(data, error)
        }
        
        task.resume()
    }
}

extension EaseCore {
    public class Networking {
        public enum NetworkResult<Value> {
            case success(Value)
            case failure(Error?)
        }
    }
}
