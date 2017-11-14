//
//  ViewController.swift
//  BinaryCouner
//
//  Created by elva wang on 11/9/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

protocol AddOrSubtractValue {
    func plusValue(by controller: BinaryCounterCell, with num: Int)
    func minusValue(by controller: BinaryCounterCell, with num: Int)
}

class ViewController: UIViewController, AddOrSubtractValue, UITableViewDataSource {
    
    var total = 0
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!        //     ++++++++
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {   ////+++++  no override
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {    ///++++++   no override
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCounterCell
        let indexPathRow = indexPath.row
        
        cell.eachCellLable.textAlignment = .right
        cell.eachCellLable.text = String(describing: pow(10,indexPathRow))
        cell.delegate = self
        
        total += Int(cell.eachCellLable.text!)!
        totalLabel.text = String(total)
        return cell
    }
    
    //MARK: Delegation methods
    func minusValue(by controller: BinaryCounterCell, with num: Int) {
        total -= num
        totalLabel.text = String(describing: total)
    }
    
    func plusValue(by controller: BinaryCounterCell, with num: Int) {
        total += num
        totalLabel.text = String(describing: total)
    }
    
    
//    func minusValue(by controller: BinaryCounterCell, with text: String) {
//        print("last : \(text)")
//        total -= Int(text)!
//        totalLabel.text = String(total)
//    }
//
//    func plusValue(by controller: BinaryCounterCell, with text: String) {
//        total += Int(text)!
//        totalLabel.text = String(total)
//    }

    

}

