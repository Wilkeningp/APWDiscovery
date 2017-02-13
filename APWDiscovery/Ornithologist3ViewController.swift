//
//  Ornithologist3ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Ornithologist3ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q2TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q2B: UIButton!
    @IBOutlet weak var q1I1: UIImageView!
    @IBOutlet weak var q1I2: UIImageView!
    @IBOutlet weak var q1I3: UIImageView!
    @IBOutlet weak var q2I1: UIImageView!
    @IBOutlet weak var q2I2: UIImageView!
    @IBOutlet weak var q2I3: UIImageView!
    @IBOutlet weak var q2I4: UIImageView!
    @IBOutlet weak var q2I5: UIImageView!
    @IBOutlet weak var q2aTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showQ1(_ sender: AnyObject) {
        q1TV.text = "When we say birds, we mean all ducks, hawks, pigeons, herons, songbirds, etc...";
        q1I1.isHidden = false;
        q1I2.isHidden = false;
        q1I3.isHidden = false;
    }
    
    @IBAction func showQ2(_ sender: AnyObject) {
        q2I1.isHidden = false;
        q2I2.isHidden = false;
        q2I3.isHidden = false;
        q2I4.isHidden = false;
        q2I5.isHidden = false;
        q2aTV.isHidden = false;
    }
    
}
