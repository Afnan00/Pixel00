//
//  Thumbnail.swift
//  testing
//
//  Created by Afnan Bashir on 05/08/2019.
//  Copyright © 2019 Afnan Bashir. All rights reserved.
//

import Foundation
import UIKit

class Thumbnail {
 
    var image: UIImage
    var title: String?
    
    init(image : UIImage , title : String){
        self.image = image
        self.title = title
    }
}
