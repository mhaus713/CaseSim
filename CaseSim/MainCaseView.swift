//
//  MainCaseView.swift
//  CaseSim
//
//  Created by Michael Hollingshaus on 1/31/16.
//  Copyright © 2016 LittleGiant. All rights reserved.
//

import UIKit

class MainCaseView: UIViewController, UICollectionViewDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    let reuseIdentifier = "caseCell"
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"]
    
    
    
    // MARK: UICollectionViewDataSource protocol
    
    
    //tell collectionView how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    
    //make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CaseCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.caseLabel.text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.yellowColor() // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

