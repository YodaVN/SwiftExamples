//
//  TableViewCell.swift
//  CellCustom
//
//  Created by Nhan Nguyen on 8/21/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

import UIKit

public class TableViewCell: UITableViewCell {
    @IBOutlet public var nameState: UILabel!
    @IBOutlet public var abbrState: UILabel!
    @IBOutlet public var areaState: UILabel!
    @IBOutlet public var largestCityState: UILabel!
    @IBOutlet public var capitalState: UILabel!
    @IBOutlet public var countryState: UILabel!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
