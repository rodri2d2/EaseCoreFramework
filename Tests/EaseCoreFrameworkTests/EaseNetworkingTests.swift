//
//  EaseNetworkingTests.swift
//  EaseCoreFrameworkTests
//
//  Created by Rodrigo  Candido on 9/7/22.
//

import XCTest
@testable import EaseCoreFramework

class NetworkSessionMock: NetworkSession {
    
    var data: Data?
    var error: Error?
    
    func get(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void) {
        completionHandler(data, error)
    }
}

final class EaseNetworkingTests: XCTestCase {
    
    static var allTests = [
        ("test_LoadDataCall", test_LoadDataCall)
    ]

    
    func test_LoadDataCall() {
        
        let manager = EaseCore.Networking.Manager()
        let session = NetworkSessionMock()
        manager.session = session
        
        let expextation = XCTestExpectation(description: "Called for data")
        
        let data = Data([0,1,0,1])
        session.data = data

        let url = URL(fileURLWithPath: "url")
        
        manager.loadData(from: url) { result in
            expextation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertEqual(data, returnedData, "manager returned unexpected dataokmj.")
                
                
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
        
        wait(for: [expextation], timeout: 5)
    }
    
}
