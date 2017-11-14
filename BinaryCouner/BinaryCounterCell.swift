//
//  BinaryCounterCell.swift
//  BinaryCouner
//
//  Created by elva wang on 11/9/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class BinaryCounterCell: UITableViewCell {
    
    var delegate : AddOrSubtractValue?    // delegat is the property of the protocol/AddOrSubtractValue
    
    var indexPath: NSIndexPath?

    @IBOutlet weak var eachCellLable: UILabel!
    @IBAction func MinusPressed(_ sender: UIButton) {
        print("xxxxxxxx---")
        print("eachcell lable : \(String(describing: eachCellLable.text!))")
        let minusNum = Int(eachCellLable.text!)
//        let text = String(describing: Int(eachCellLable.text!))
//        print("\(text)")
        //        delegate?.minusValue(by: self, with: text)
        print("\(String(describing: minusNum))")
        delegate?.minusValue(by: self, with: minusNum!)   // the self is a instance of the cell the function grab
    }
    @IBAction func plusPressed(_ sender: UIButton) {
        print("yyyyyyyy+++")
        let plusNum = Int(eachCellLable.text!)
//        let text = String(describing: Int(eachCellLable.text!))
//        delegate?.plusValue(by: self, with: text)
        delegate?.plusValue(by: self, with: plusNum!)
    }
    
    
    
}


