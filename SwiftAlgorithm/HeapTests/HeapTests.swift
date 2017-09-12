//
//  HeapTests.swift
//  HeapTests
//
//  Created by 오민호 on 2017. 9. 12..
//  Copyright © 2017년 Minomi. All rights reserved.
//

import XCTest
@testable import SwiftAlgorithm

class HeapTests: XCTestCase {
    
    func testCreateHeap() {
        
        let maxHeap = Heap<Int>(array: [27, 17, 3, 16, 13, 10, 1, 5, 7, 12, 4, 8, 9, 0], sort: >)
        XCTAssertEqual(maxHeap.elements, [27, 17, 10, 16, 13, 9, 1, 5, 7, 12, 4, 8, 3, 0])
        
        let minHeap = Heap<Int>(array: [27, 17, 3, 16, 13, 10, 1, 5, 7, 12, 4, 8, 9, 0], sort: <)
        XCTAssertEqual(minHeap.elements, [0, 4, 1, 5, 12, 8, 3, 16, 7, 17, 13, 10, 9, 27])
        
    }
    
}
