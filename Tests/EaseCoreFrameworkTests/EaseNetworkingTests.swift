//
//  EaseNetworkingTests.swift
//  EaseCoreFrameworkTests
//
//  Created by Rodrigo  Candido on 9/7/22.
//

import XCTest
@testable import EaseCoreFramework

final class EaseNetworkingTests: XCTestCase {
    
    static var allTests = [
        ("test_LoadDataCall", test_LoadDataCall)
    ]

    
    func test_LoadDataCall() {
        let manager = EaseCore.Networking.Manager()
        let expextation = XCTestExpectation(description: "Called for data")
        guard let url = URL(string: "https://github.com") else {
            return XCTFail("Could not create URL! Invalid URL!")
        }
        
        manager.loadData(from: url) { result in
            expextation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil!")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
        
        wait(for: [expextation], timeout: 5)
    }
    
}
