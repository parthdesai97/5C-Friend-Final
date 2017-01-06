//
//  mapsViewController.swift
//  5C Friend-2
//
//  Created by Parth Desai on 12/25/16.
//  Copyright © 2016 Parth Desai. All rights reserved.
//

import UIKit

class mapsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet var collectionView: UICollectionView!
   
    
    let schoolNames = ["Claremont Colleges", "Pomona", "Pitzer", "Harvey Mudd", "Scripps", "Claremont McKenna"]
    
    let mapArray = [UIImage(named: "5CMap"), UIImage(named: "PomonaMap"), UIImage(named: "PitzerMap"), UIImage(named: "MuddMap"), UIImage(named: "ScrippsMAp"), UIImage(named: "CMCMap")]
    
    let cellMapArray = [UIImage(named: "5Cs.jpg"), UIImage(named: "pomona.jpg"), UIImage(named: "Pitzer.jpg"), UIImage(named: "Mudd.jpg"), UIImage(named: "Scripps.jpg"), UIImage(named: "CMC1.jpg")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = "Maps"
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.schoolNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! mapCollectionViewCell
        
        cell.imageView?.image = self.cellMapArray[indexPath.row]
        
        cell.imageTitle?.text = self.schoolNames[indexPath.row]
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "showImage", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as IndexPath
            let vc = segue.destination as! imageViewController
            vc.image = self.mapArray[indexPath.row]!
            vc.title = self.schoolNames[indexPath.row]
        }
    }
    
    
    
}

