//
//  EventsTableViewCell.swift
//  City Tour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 24/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//

import UIKit

class EventsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgEvent: UIImageView!
    
    @IBOutlet weak var lblNameEvent: UILabel!
    
    @IBOutlet weak var lblPlaceEvent: UILabel!
    
    @IBOutlet weak var lblDateEvent: UILabel!
    
    @IBOutlet weak var lblAddressEvent: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
