//
//  TableViewCell.swift
//  TNButterflies
//
//  Created by Bharath  Raj kumar on 13/07/18.
//  Copyright © 2018 Pixl Ecosystems. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellFamName: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var mainBackground: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellImageView.layer.cornerRadius = 5
        cellImageView.clipsToBounds = true
        
        
        
        let rectangleLayer = CALayer()
        rectangleLayer.frame = CGRect(x: 0, y: 0, width: 355, height: 180)
        rectangleLayer.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5).cgColor
        
        cellImageView.layer.addSublayer(rectangleLayer)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        selectionStyle = .none
    }

}
