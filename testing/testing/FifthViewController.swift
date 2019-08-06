//
//  FifthViewController.swift
//  testing
//
//  Created by Afnan Bashir on 05/08/2019.
//  Copyright © 2019 Afnan Bashir. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTextView.text = details[myIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
