//
//  XCTestManifests.swift
//  EaseCoreFrameworkTests
//
//  Created by Rodrigo  Candido on 9/7/22.
//

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EaseCoreColorTests.allTests),
        testCase(EaseNetworkingTests.allTests)
    ]
}
#endif
