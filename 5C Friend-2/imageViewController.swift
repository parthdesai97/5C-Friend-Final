//
//  NewViewController.swift
//  5C Friend-2
//
//  Created by Parth Desai on 12/25/16.
//  Copyright © 2016 Parth Desai. All rights reserved.
//

import UIKit


class imageViewController: UIViewController, UIScrollViewDelegate {


    var image = UIImage()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let scroll = ImageScrollView()
        scroll.frame = self.view.frame
        scroll.display(image: self.image)
        self.view.addSubview(scroll)
        

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
}
