//
//  DashboardEditableCell.swift
//  Bluetooth_connect
//
//  Created by Ravi Patel on 3/24/20.
//  Copyright © 2020 neel shah. All rights reserved.
//

import UIKit

class DashboardEditableCell: UITableViewCell, UITableViewDelegate{
    
    
    @IBOutlet weak var displayView: UIView!
    
    var key_label: UILabel!
    var value_label: UITextField!
    var suffix_label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
                
        key_label = UILabel()
        value_label = UITextField()
        suffix_label = UILabel()
        
        value_label.textColor = .lightGray
        value_label.textAlignment = .right
        value_label.keyboardType = .numbersAndPunctuation
        value_label.textAlignment = .right
        value_label.clearButtonMode = .whileEditing
        suffix_label.textColor = .lightGray
        suffix_label.textAlignment = .left
        suffix_label.adjustsFontSizeToFitWidth = true
        
//        key_label.backgroundColor = .red
//        value_label.backgroundColor = .orange
//        suffix_label.backgroundColor = .green
                
        let width = displayView.frame.width
        let height = displayView.frame.height
        
        let key_label_fram = CGRect(x: 0, y: 0, width: width * 0.5, height: height)
        key_label.frame = key_label_fram

        let value_label_frame = CGRect(x: key_label.frame.maxX, y: 0, width: width * 0.3, height: height)
        value_label.frame = value_label_frame
        
        let suffix_label_frame = CGRect(x: value_label.frame.maxX, y: 0, width: width * 0.2, height: height)
        suffix_label.frame = suffix_label_frame
        
        displayView.addSubview(key_label)
        displayView.addSubview(value_label)
        displayView.addSubview(suffix_label)
        
//        self.contentView.addSubview(key_label)
//        self.contentView.addSubview(value_label)
//        self.contentView.addSubview(suffix_label)
    }
}
