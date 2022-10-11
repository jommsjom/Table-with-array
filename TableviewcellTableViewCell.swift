//
//  TableviewcellTableViewCell.swift
//  Tableviewandcollectionview
//
//  Created by Jomms on 08/10/22.
//

import UIKit

class TableviewcellTableViewCell: UITableViewCell {

    
    
    @IBOutlet var imgview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgview?.layer.cornerRadius = (imgview?.frame.size.width ?? 0.0) / 2
        imgview?.clipsToBounds = true
        imgview?.layer.borderWidth = 3.0
        imgview?.layer.borderColor = UIColor.black.cgColor

       
        
    }

   
}
