//
//  TableViewController+Datasource.swift
//  BBVA
//
//  Created by Nhan Nguyen on 8/20/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

import Foundation
import UIKit
import CellCustom

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.result.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height: CGFloat = 0.0
        if (self.result[indexPath.row].largest_city == "") {
            height = 145
        } else {
            height = 180
        }
        
        return height
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self)) as? TableViewCell else {
            fatalError()
        }
        
        tableViewCell.nameState.text = self.result[indexPath.row].name
        tableViewCell.abbrState.text = self.result[indexPath.row].abbr
        //Convert by NSString category
        tableViewCell.areaState.text = NSString.convert(self.result[indexPath.row].area)
        //
        tableViewCell.capitalState.text = self.result[indexPath.row].capital
        tableViewCell.countryState.text = self.result[indexPath.row].country
        tableViewCell.largestCityState.text = self.result[indexPath.row].largest_city
        
        return tableViewCell
    }
}
