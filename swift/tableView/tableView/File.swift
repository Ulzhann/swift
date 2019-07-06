//
//  File.swift
//  tableView
//
//  Created by Ulzhan Akmurat on 7/2/19.
//  Copyright © 2019 ulzhanx. All rights reserved.
//


import UIKit

class File: UITableViewController {
    
    var array = ["Nursultan", "Almaty"]
    
    var arrayImage = ["download","download-1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let label = cell.viewWithTag(1001) as! UILabel
        
        label.text =  array[indexPath.row]
        
        let imageViwe = cell.viewWithTag(1000) as! UIImageView
        imageViwe.image = UIImage(named: arrayImage[indexPath.row])
        
        return cell
        
        
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController =
            storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        viewController.city = array[indexPath.row]
        viewController.imagename = arrayImage[indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
        
        
        
        
    }

}

