//
//  Biologist3ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/18/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Biologist3ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var q3TV: UITextView!
    @IBOutlet weak var q3B: UIButton!
    @IBOutlet weak var q3img1: UIImageView!
    @IBOutlet weak var q3img2: UIImageView!
    @IBOutlet weak var q3img3: UIImageView!
    @IBOutlet weak var q3img4: UIImageView!
    
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
    
    @IBAction func ShowQ3(_ sender: AnyObject) {
        q3TV.text = "By using your eyes and ears, you might be surprised by how many different types of evidence you can find. Examples include animal homes, scat, tracks, and pathways through vegitation";
        q3img1.isHidden = false;
        q3img2.isHidden = false;
        q3img3.isHidden = false;
        q3img4.isHidden = false;

    }
}
