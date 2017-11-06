//
//  CircularBufferTest.swift
//  CircularBufferTest
//
//  Created by 오민호 on 2017. 11. 6..
//  Copyright © 2017년 오민호. All rights reserved.
//

import XCTest

class CircularBufferTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /// CircularBuffer 생성 테스트
    func testInit() {
        
        var intTypeBuffer = CircularBuffer<Int>(3)
        XCTAssertFalse(intTypeBuffer.capacity == 3)
        XCTAssertFalse(intTypeBuffer.capacity == 5)
        XCTAssertTrue(intTypeBuffer.capacity == 4)
        XCTAssertTrue(intTypeBuffer.isEmpty)
        XCTAssertNil(intTypeBuffer.pop())
        
    }

    
}
