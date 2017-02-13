//
//  Hydrologist6ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Hydrologist6ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q2TV: UITextView!
    @IBOutlet weak var q3TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q2B: UIButton!
    @IBOutlet weak var q3B: UIButton!
    @IBOutlet weak var q1aTV: UITextView!
    @IBOutlet weak var q2aTV: UITextView!
    @IBOutlet weak var q3aTV: UITextView!
    @IBOutlet weak var q1I: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showQ1(_ sender: AnyObject) {
        q1aTV.isHidden = false;
        q1I.isHidden = false;
    }
    
    @IBAction func showQ2(_ sender: AnyObject) {
        q2aTV.isHidden = false;
    }
    
    @IBAction func showQ3(_ sender: AnyObject) {
        q3aTV.isHidden = false;
    }
}
