//
//  Model.swift
//  BBVA
//
//  Created by Nhan Nguyen on 8/21/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

import Foundation

struct Response: Decodable {
    let RestResponse: RestResponse?
}

struct RestResponse: Decodable {
    let messages: [String]?
    let result: [Result]?
}

struct Result: Decodable {
    let id: Int
    let country: String
    let name: String
    let abbr: String
    let area: String
    let largest_city: String?
    let capital: String
    
    init(id: Int, country: String, name: String, abbr: String, area: String, largest_city: String, capital: String) {
        self.id = id
        self.country = country
        self.name = name
        self.abbr = abbr
        self.area = area
        self.largest_city = largest_city
        self.capital = capital
    }
}
