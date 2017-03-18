//
//  hours.swift
//  5C Friend-2
//
//  Created by Parth Desai on 1/7/17.
//  Copyright © 2017 Parth Desai. All rights reserved.
//

import UIKit

class hours: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var places = ["Frary Dining Hall (POM)","Frank Dining Hall (POM)","McConnell Dining Hall (PIT)","Malott Dining Commons (SCR)","Hoch-Shanahan Dining Hall (HMC)","Collins Dining Hall (CMC)","The Hub (CMC)","Grove House (PIT)","Pit Stop (PIT)","Shakedown (PIT)","Motley (SCR)","Jay's Place (HMC)","Mudd Cafe (HMC)","Coop Fountain (POM)", "Rains Center (POM)","Robets Pavilion (CMC)","Gold Student Center (PIT)","Tiernan Field House (SCR)","Linde Activities Center (HMC)","Library"]
    
    var placeHours = ["Mon-Fri:" + "\n" + "Breakfast: 7:30 AM - 10:00 AM" + "\n" + "Lunch: 11:00 AM - 2:00 PM" + "\n" + "Dinner: 5:00 PM - 8:00 PM" + "\n\n" + "Sat-Sun:" + "\n" + "Continental Breakfast: 8:00 AM - 10:30 AM" + "\n" + "Brunch: 10:30 AM - 1:30 PM" + "\n" + "Dinner: 5:00 PM - 8:00 PM" + "\n\n" + "Sun-Wed:" + "\n" + "Snack: 10:30 PM - 11:30 PM", "Mon-Thurs:" + "\n" + "Breakfast: 7:30 AM - 10:00 AM" + "\n" + "Lunch: 11:30 AM - 1:00 PM" + "\n" + "Dinner: 5:00 PM - 7:00 PM" + "\n\n" + "Fri-Sat:" + "\n" + "Closed" + "\n\n" + "Sun:" + "\n" + "Brunch: 11:00 PM - 1:00 PM" + "\n" + "Dinner: 5:30 PM - 7:00 PM", "Mon-Fri:" + "\n" + "Breakfast: 7:30 AM - 10:00 AM" + "\n" + "Lunch: 11:15 AM - 1:30 PM" + "\n" + "Dinner: 5:00 PM - 7:30 PM" + "\n\n" + "Sat-Sun:" + "\n" + "Brunch: 10:30 AM - 12:30 PM" + "\n" + "Dinner: 5:00 PM - 6:30 PM", "Mon-Fri:" + "\n" + "Breakfast: 7:30 AM - 9:30 AM" + "\n" + "Continental Breakfast: 9:30 AM - 10:00 PM" + "\n" + "Lunch: 11:15 AM - 1:30 PM" + "\n" + "Dinner: 5:00 PM - 6:30 PM" + "\n\n" + "Sat-Sun:" + "\n" + "Brunch: 10:45 AM - 1:00 PM" + "\n" + "Dinner: 5:00 PM - 6:30 PM", "Mon-Fri:" + "\n" + "Breakfast: 7:30 AM - 9:30 AM" + "\n" + "Lunch: 11:15 AM - 1:00 PM" + "\n" + "Dinner: 5:00 PM - 7:00 PM" + "\n\n" + "Sat-Sun:" + "\n" + "Brunch: 10:30 AM - 12:45 PM" + "\n" + "Dinner: 5:00 PM - 7:00 PM", "Mon-Fri:" + "\n" + "Breakfast: 7:30 AM - 9:30 AM" + "\n" + "Lunch: 11:00 AM - 1:00 PM" + "\n" + "Dinner: 5:00 PM - 7:00 PM" + "\n\n" + "Sat-Sun:" + "\n" + "Brunch: 10:30 AM - 12:30 PM" + "\n" + "Dinner: 5:00 PM - 8:00 PM", "Lounge:" + "\n" + "Daily: 8:00 AM - 2:00 AM" + "\n\n" + "Grill:" + "\n" + "Mon-Thurs: 11:00 AM - 3:00 PM, 7:00 PM - 10:30 AM" + "\n" + "Fri: 11:00 AM - 3:00 PM, 7:00 PM - 2:00 AM" + "\n" + "Sat: 7:00 PM - 2:00 AM" + "\n" + "Sun: 7:00 PM - 12:00 AM" + "\n\n" + "Store:" + "\n" + "Mon-Thurs: 10:00 AM - 11:00 PM" + "\n" + "Fri: 10 AM - 9 :00PM" + "\n" + "Sat-Sun: 12 PM - 5 PM", "Mon-Fri:" + "\n" + "Breakfast: 8:00 AM - 10:00 AM" + "\n" + "Lunch: 12:30 AM - 3:30 PM", "Mon-Fri: 8:30 AM - 5:00 PM" + "\n" + "Sat-Sun: Closed", "Mon-Thurs: 11:00 AM - 5:00 PM" + "\n" + "Fri: 1:00 PM - 4:00 PM" + "\n" + "Sat: 1:00 PM - 4:00 PM" + "\n" + "Sun: 12:00 PM - 9:30 PM", "Mon-Thurs: 8:00 AM - 11:00 PM" + "\n" + "Fri: 8:00 AM - 5:00 PM" + "\n" + "Sat: 11:00 AM - 5:00 PM" + "\n" + "Sun: 11:00 AM - 5:00 PM, 7:30 PM - 11:00 PM", "Sun-Thurs: 7:00 PM - 1:00 AM" + "\n" + "Fri-Sat: 8:00 PM - 2:00 AM", "Mon-Fri, Sun: 7:30 AM - 12:00 AM" + "\n" + "Sat: Closed", "Mon-Thurs: 9:00 AM - 11:00 PM" + "\n" + "Fri-Sat: 9:00 AM - 1:00 AM", "Mon-Fri: 8:00 AM - 10:00 PM" + "\n" + "Sat-Sun: 10:00 AM - 10:00 PM", "Mon-Fri: 8:00 AM - 10:00 PM" + "\n" + "Sat: 10:00 AM - 8:00 PM" + "\n" + "Sun: 12:00 PM - 11:00 PM", "Mon-Fri: 7:00 AM - 11:00 PM" + "\n" + "Sat: 9:00 AM - 9:00 PM" + "\n" + "Sun: 9:00 AM - 11:00 PM", "Mon-Thurs: 7:00 AM - 7:00 PM" + "\n" + "Fri: 12:00 AM - 3:00 PM" + "\n" + "Sat-Sun: 12:00 PM - 3:00 PM", "Mon-Fri: 11:30 AM - 1:30 PM, 4:30 PM - 1:00 AM" + "\n" + "Sat: 11:30 AM - 9:30 PM" + "\n" + "Sun: 11:30 AM - 1:00 AM", "Sun-Thurs: 8:00 AM - 1:00 AM" + "\n" + "Friday: 8:00 AM - 10:00 PM" + "\n" + "Sat: 9:00 AM - 10:00 PM"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Hours"
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque
        
        tableView.delegate = self
        tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = places[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showHours", sender: placeHours[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! placeHours
        destination.hello = sender as! String
    }

}
