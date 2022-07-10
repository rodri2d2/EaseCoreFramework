//
//  Networking.swift
//  EaseCoreFramework
//
//  Created by Rodrigo  Candido on 9/7/22.
//

import Foundation

extension EaseCore {
    public class Networking {
        
        public enum NetworkResult<Value> {
            case success(Value)
            case failure(Error?)
        }
        
    }
}
