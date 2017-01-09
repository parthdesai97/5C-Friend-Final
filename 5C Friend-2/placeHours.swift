//
//  placeHours.swift
//  5C Friend-2
//
//  Created by Parth Desai on 1/7/17.
//  Copyright © 2017 Parth Desai. All rights reserved.
//

import UIKit

class placeHours: UIViewController {

 
    @IBOutlet weak var hours: UITextView!

    var hello = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hours.text = hello

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
