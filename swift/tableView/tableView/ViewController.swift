//
//  ViewController.swift
//  tableView
//
//  Created by Ulzhan Akmurat on 7/2/19.
//  Copyright © 2019 ulzhanx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var addText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var addImage: UITextField!
    
    var city = ""
    var imagename = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        label.text = city
        imageView.image = UIImage(named: imagename)
    }
    @IBAction func addView(_ sender: Any) {
        
    }
    

}

