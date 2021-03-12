//
//  Pryaniky.swift
//  TestProject
//
//  Created by MacBook on 04.03.2021.
//  Copyright © 2021 ZelimkhanEdilov. All rights reserved.
//

import Foundation

struct Json: Codable {
    var data: [NameData]
    var view: [NameData]
    
}

struct NameData: Codable {
    var name: String
    var data: Data
    
}

struct Data: Codable {
    var url: String?
    var text: String?
    var selectedId: Int?
    var variants: [Variant]?
    
//    public init (url: String, text: String, selectedId: Int, variants: [Variant]) {
//        self.url = url
//        self.text = text
//        self.selectedId = selectedId
//        self.variants = variants
//        
//    }
}

struct Variant: Codable {
    var id:Int
    var text:String
}


//struct Subcomposition: Codable {
//    var hz: String
//    var picture: String
//    var selector: String
//}
//
//struct Datass: Codable {
//    var url:String
//    var text:String
//    var selectedId: Int
//    var variants:[Variants]



