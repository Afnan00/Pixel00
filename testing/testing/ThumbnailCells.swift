//
//  ThumbnailCells.swift
//  testing
//
//  Created by Afnan Bashir on 05/08/2019.
//  Copyright © 2019 Afnan Bashir. All rights reserved.
//

import UIKit

class ThumbnailCells: UITableViewCell {

    @IBOutlet weak var ThumbnailView: UIImageView!
    @IBOutlet weak var VideoTitleLabel: UILabel!
    
    func setThumbnail(thumbnail: Thumbnail){
        
        ThumbnailView.image = thumbnail.image
        VideoTitleLabel.text = thumbnail.title
        
    }
    
}
