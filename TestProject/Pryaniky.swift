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
    var view: [String]
    
}

struct NameData: Codable {
    var name: String
    var data: Data
  
  struct Data: Codable {
      var url: String?
      var text: String?
      var selectedId: Int?
      var variants: [Variant]?
  }

  struct Variant: Codable {
      var id:Int
      var text:String
  }
    
}


