//
//  ViewController.swift
//  BBVA
//
//  Created by Nhan Nguyen on 8/20/18.
//  Copyright © 2018 Nhan Nguyen. All rights reserved.
//

import UIKit
import CellCustom

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var result: [Result] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "BBVA"
        
        //Config table
        let bundle = Bundle(for: TableViewCell.self)
        let reuseIdentifier = String(describing: TableViewCell.self)
        tableView.register(UINib(nibName: reuseIdentifier, bundle: bundle), forCellReuseIdentifier: reuseIdentifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        let getDataJSON = { (jsonData: [Result]) -> Void in
            self.result = jsonData
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        let vm = ViewModel()
        vm.getData(urlJSONString: "http://services.groupkt.com/state/get/USA/all", completionHanlder: getDataJSON)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

