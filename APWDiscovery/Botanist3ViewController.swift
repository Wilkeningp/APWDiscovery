//
//  Botanist3ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/19/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Botanist3ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var bigqL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var q4TV: UITextView!
    @IBOutlet weak var q4B: UIButton!
    @IBOutlet weak var q4a1TV: UITextView!
    @IBOutlet weak var q4a2TV: UITextView!
    @IBOutlet weak var q4a3TV: UITextView!
    @IBOutlet weak var q4a4TV: UITextView!
    @IBOutlet weak var q4a5TV: UITextView!
    @IBOutlet weak var q4I1: UIImageView!
    @IBOutlet weak var q4I2: UIImageView!
    @IBOutlet weak var q4I3: UIImageView!
    @IBOutlet weak var q4I4: UIImageView!
    @IBOutlet weak var q4I5: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var continueB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShowQ4(_ sender: UIButton) {
        q4TV.text = "Here are some examples of plant adaptations:";
        q4a1TV.isHidden = false;
        q4a2TV.isHidden = false;
        q4a3TV.isHidden = false;
        q4a4TV.isHidden = false;
        q4a5TV.isHidden = false;
        q4I1.isHidden = false;
        q4I2.isHidden = false;
        q4I3.isHidden = false;
        q4I4.isHidden = false;
        q4I5.isHidden = false;
    }
}
