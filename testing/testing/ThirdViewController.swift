//
//  ThirdViewController.swift
//  testing
//
//  Created by Afnan Bashir on 02/08/2019.
//  Copyright © 2019 Afnan Bashir. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var tableview : UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.func_tableviewSetup()
        
    }

    func func_tableviewSetup(){
        tableview.delegate = self
        tableview.dataSource = self
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


// MARK :- Tableview Setup


extension ThirdViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonCellTVC", for: indexPath) as! ButtonCellTVC
        cell.btn_outlet_GotoNextScreen.setTitle("\(indexPath.row) button", for: .normal)
        return cell
    }
    
}
