//
//  Botanist5ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/20/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Botanist5ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var q1qTV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q1aTV: UITextView!
    @IBOutlet weak var q2qTV: UITextView!
    @IBOutlet weak var q2B: UIButton!
    @IBOutlet weak var q2aTV: UITextView!
    @IBOutlet weak var q2I1: UIImageView!
    @IBOutlet weak var q2I2: UIImageView!
    @IBOutlet weak var continueB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ShowQ1(_ sender: AnyObject) {
        q1aTV.isHidden = false;
    }
    @IBAction func ShowQ2(_ sender: AnyObject) {
        q2qTV.text = "In science, if you didn't write it down, it didn't happen!  You could make drawings, take photos, record observations, and create a table to summarize and compare your observations.";
        q2aTV.isHidden = false;
        q2I1.isHidden = false;
        q2I2.isHidden = false;
    }
    
    
}
