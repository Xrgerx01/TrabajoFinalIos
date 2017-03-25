//
//  RoutesTableViewCell.swift
//  City Tour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 11/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//

import UIKit

class RoutesTableViewCell: UITableViewCell {

    @IBOutlet weak var routeTitleLbl: UILabel!
    @IBOutlet weak var routeDescriptionLbl: UILabel!
    @IBOutlet weak var routePointsLbl: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
