//
//  SecondViewController.swift
//  testing
//
//  Created by Afnan Bashir on 02/08/2019.
//  Copyright © 2019 Afnan Bashir. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func btn_action_gotoNextScreen(_ sender : Any){
        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(navigationController, animated: true)
    }
    
}
