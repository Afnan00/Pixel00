//
//  FourthViewController.swift
//  testing
//
//  Created by Afnan Bashir on 02/08/2019.
//  Copyright © 2019 Afnan Bashir. All rights reserved.
//

import UIKit
var details = ["The Suzuki Vitara is a compact SUV produced by Suzuki in four generations since 1988. The second and third generation models were known as the Suzuki Grand Vitara, with the fourth and current series eschewing this prefix. The original series was designed to fill the slot above the Suzuki Jimny." , "The Honda Vezel is a subcompact crossover SUV manufactured by Honda. In Singapore the official Honda distributor sells the HR-V, while the parallel imported version retains the name Vezel." , "The Toyota C-HR (Japanese: トヨタ C-HR Hepburn: Toyota Shīeichiāru) is a subcompact crossover SUV produced by Toyota. ... The name C-HR stands for Compact High Rider, Cross Hatch Run–about or Coupé High–Rider." , "The Nissan Juke (Japanese: 日産・ジューク Nissan Jūku) is a subcompact crossover SUV produced by the Japanese manufacturer Nissan since 2010." , "The BMW X7 is a luxury sport utility vehicle manufactured by BMW. It is BMW's flagship Sports Activity Vehicle (SAV). The X7 was first announced by BMW in March 2014. It was officially unveiled on October 17, 2018, with pre-orders being taken online." , "The Audi Q7 is a mid-size luxury SUV made by the German manufacturer Audi, unveiled in September 2005 at the Frankfurt Motor Show. Production of this 7-seater SUV began in the autumn of 2005 at the Volkswagen Bratislava Plant in Bratislava, Slovakia."]
var myIndex = 0

class FourthViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var thumbnails: [Thumbnail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thumbnails = createArray();

        tableView.delegate = self
        tableView.dataSource = self
    }
    func createArray() -> [Thumbnail] {
        
        var tempThumbnails: [Thumbnail] = []
        
        let thumbnail1 = Thumbnail(image: #imageLiteral(resourceName: "SuzukiVitara") , title: "The all new Suzuki Vitara!")
        let thumbnail2 = Thumbnail(image: #imageLiteral(resourceName: "HondaVezel") , title: "The all new Honda Vezel!")
        let thumbnail3 = Thumbnail(image: #imageLiteral(resourceName: "ToyotaCHR") , title: "The all new Toyota CHR!")
        let thumbnail4 = Thumbnail(image: #imageLiteral(resourceName: "NissanJuke") , title: "The all new Nissan Juke!")
        let thumbnail5 = Thumbnail(image: #imageLiteral(resourceName: "BmwX7") , title: "The all new BMW X7!")
        let thumbnail6 = Thumbnail(image: #imageLiteral(resourceName: "AudiQ7") , title: "The all new AUDI Q7!")
        
        tempThumbnails.append(thumbnail1)
        tempThumbnails.append(thumbnail2)
        tempThumbnails.append(thumbnail3)
        tempThumbnails.append(thumbnail4)
        tempThumbnails.append(thumbnail5)
        tempThumbnails.append(thumbnail6)
        
        return tempThumbnails
        
    }
}

extension FourthViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thumbnails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let thumbnail = thumbnails[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThumbnailCells") as! ThumbnailCells
        
        cell.setThumbnail(thumbnail: thumbnail)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
   
}

