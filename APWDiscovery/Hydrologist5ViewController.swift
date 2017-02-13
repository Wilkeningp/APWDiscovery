//
//  Hydrologist5ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Hydrologist5ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var BigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q2TV: UITextView!
    @IBOutlet weak var q3TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q2B: UIButton!
    @IBOutlet weak var q3B: UIButton!
    @IBOutlet weak var q2aTV: UITextView!
    @IBOutlet weak var q3aTV: UITextView!
    @IBOutlet weak var q2I1: UIImageView!
    @IBOutlet weak var q2I2: UIImageView!
    @IBOutlet weak var q2I3: UIImageView!
    @IBOutlet weak var q3I1: UIImageView!
    
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showQ1(_ sender: AnyObject) {
        q1TV.text = "Great science is done by making observations and thinking about the connections between them. Scientists make observations in a systematic way; their investigations are done in the same way every time.";
    }
    
    @IBAction func showQ2(_ sender: AnyObject) {
        q2aTV.isHidden = false;
        q2I1.isHidden = false;
        q2I2.isHidden = false;
        q2I3.isHidden = false;
    }
    
    @IBAction func showQ3(_ sender: AnyObject) {
        q3aTV.isHidden = false;
        q3I1.isHidden = false;
    }
    
}
