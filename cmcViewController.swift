//
//  cmcViewController.swift
//  5C Friend-2
//
//  Created by Parth Desai on 1/8/17.
//  Copyright © 2017 Parth Desai. All rights reserved.
//

import UIKit

class cmcViewController: UIViewController {
    
    var jsonData: AnyObject?
    
    @IBOutlet weak var cmcMenu: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Claremont McKenna Menu"
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque

        
        // Current weather getter - wow
        
        getWeatherData(urlString: "http://api.openweathermap.org/data/2.5/weather?q=Claremont,US&APPID=4fca460e7737f772e53ec05932694761")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getWeatherData(urlString: String) {
        let url = URL(string: urlString)
        
        let task = URLSession.shared.dataTask(with: url! as URL) {(data, response, error) in
            DispatchQueue.main.async(execute: {
                self.setLabels(weatherData: data! as NSData)
            })
        }
        task.resume()
    }
    
    func setLabels(weatherData: NSData) {
        do {
            self.jsonData = try JSONSerialization.jsonObject(with: weatherData as Data, options: []) as! NSDictionary
        } catch {
            DispatchQueue.main.async {
                self.showSimpleAlert(title: "Can't get the weather",
                                     message: "The weather service isn't responding.")
            }
        }
        
        if let main = jsonData!["main"] as? NSDictionary {
            if let temp = main["temp"] as? Double {
                self.cmcMenu.text = "Temp in Claremont:" + "\n" + String(format: "%.0f", (temp - 273.15) * 1.8 + 32) + "˚ F " + "(" + String(format: "%.0f", temp - 273.15) + "˚ C)"
            }
        }
    }
    
    func showSimpleAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style:  .default,
            handler: nil
        )
        alert.addAction(okAction)
        present(
            alert,
            animated: true,
            completion: nil
        )
    }
    
}

