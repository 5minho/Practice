//: Playground - noun: a place where people can play

import UIKit

let encoding = String.Encoding(rawValue: CFStringConvertEncodingToNSStringEncoding(0x0422))

if let url = URL(string: "http://blog.naver.com/hana7797/221067991596") {
    do {
        let contents = try String(contentsOf: url, encoding: encoding)
        print(contents)
    } catch {
        print("contents could not be loaded")
        
    }
} else {
    print("the URL was bad!")
}



