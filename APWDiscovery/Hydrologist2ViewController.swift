//
//  Hydrologist2ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Hydrologist2ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var BigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q2TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q2B: UIButton!
    @IBOutlet weak var q2aTV: UITextView!
    @IBOutlet weak var q2aI: UIImageView!
    
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func ShowQ1(_ sender: AnyObject) {
        q1TV.text = "A system is a set of connected parts that work together to accomplish an objective.";
    }
    
    @IBAction func ShowQ2 (_ sender: AnyObject) {
        q2aTV.isHidden = false;
        q2aI.isHidden = false;
    }
    
}
