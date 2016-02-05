//
//  MainCaseView.swift
//  CaseSim
//
//  Created by Michael Hollingshaus on 1/31/16.
//  Copyright © 2016 LittleGiant. All rights reserved.
//

import UIKit

class MainCaseView: UICollectionViewController {

    private let reuseIdentifier = "CaseCell"
    private let sectionInserts = UIEdgeInserts(top: 50.0, left: 20.0, bottom: 50.0, right:20.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

