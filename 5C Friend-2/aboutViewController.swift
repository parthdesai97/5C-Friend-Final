//
//  aboutViewController.swift
//  5C Friend-2
//
//  Created by Parth Desai on 12/28/16.
//  Copyright © 2016 Parth Desai. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationItem.title = "About"
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
