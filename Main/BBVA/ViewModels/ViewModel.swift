//
//  ViewModel.swift
//  BBVA
//
//  Created by Nhan Nguyen on 8/21/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

import UIKit

class ViewModel {
    var stateInfo: [Result] = []
    
    func getData(urlJSONString: String, completionHanlder: @escaping (_ jsonData: [Result] ) -> Void) {
        guard let url = URL(string: urlJSONString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (result, response, error) in
            guard let data = result else {
                return
            }
            
            do {
                let final = try? JSONDecoder().decode(Response.self, from: data)
                guard let bbvaResponse = final else {
                    return
                }
                guard let results = bbvaResponse.RestResponse?.result else {
                    return
                }
                
                for result in results {
                    if let finalLargestCity = result.largest_city {
                        let resultObject = Result(id: result.id, country: result.country, name: result.name, abbr: result.abbr, area: result.area, largest_city: finalLargestCity, capital: result.capital)
                        self.stateInfo.append(resultObject)
                    } else {
                        let resultObject = Result(id: result.id, country: result.country, name: result.name, abbr: result.abbr, area: result.area, largest_city: "", capital: result.capital)
                        self.stateInfo.append(resultObject)
                    }
                }
                completionHanlder(self.stateInfo)
            }
        }.resume()
    }
}
