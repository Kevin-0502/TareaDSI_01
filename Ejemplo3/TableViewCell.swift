//
//  TableViewCell.swift
//  Ejemplo3
//
//  Created by desarrollador on 18/9/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imagen: UIImageView!
    
    
    @IBOutlet weak var descripcion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
