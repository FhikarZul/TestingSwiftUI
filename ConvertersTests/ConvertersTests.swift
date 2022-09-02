//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by Lucy on 01/09/22.
//

import XCTest

class ConvertersTests: XCTestCase {
    private var sut: Converters!
    
    override func setUpWithError() throws {
        sut = Converters()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    //should return result convert when number input is valid
    func test_convert_is_uccess(){
        let actual = sut.convertUsdToRupiah(usd: "5")
        let expected = "Rp74295.00"
        
        XCTAssertEqual(actual, expected)
    }
       
    //should return an error message when number input is -5
    func test_convert_is_error_negative_input(){
        let actual = sut.convertUsdToRupiah(usd: "-5")
        let expected = "Please enter a positive number."
        
        XCTAssertEqual(actual, expected)
    }
    
    //should return an error message when number input is big
    func test_convert_is_error_big_number(){
        let actual = sut.convertUsdToRupiah(usd: "1000000")
        let expected = "Value too big to convert!"
        
        XCTAssertEqual(actual, expected)
    }
    
}
