//
//  Botanist2ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/19/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Botanist2ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q1Img1: UIImageView!
    @IBOutlet weak var q1Img2: UIImageView!
    @IBOutlet weak var q1Img3: UIImageView!
    @IBOutlet weak var q1Img4: UIImageView!
    
    @IBOutlet weak var q2TV: UITextView!
    @IBOutlet weak var q2B: UIButton!
    
    @IBOutlet weak var q3TV: UITextView!
    @IBOutlet weak var q3B: UIButton!
    
    @IBOutlet weak var continueB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShowQ1(_ sender: UIButton) {
        q1TV.text = "Below are pictures of trees commonly found at Sweetwater Wetlands. Willow Tree (Top Left), Cottonwood Tree (Top Right), Palo Verde (Bottom Left), and Mesquite Tree (Bottom Right). These four types of trees are commonly found at Sweetwater Wetlands.  When you are ready to walk to the next QR code, see if you can identify them.";
        q1Img1.isHidden = false;
        q1Img2.isHidden = false;
        q1Img3.isHidden = false;
        q1Img4.isHidden = false;
    }
    @IBAction func ShowQ2(_ sender: UIButton) {
        q2TV.text = "An adaptation is a process by which an animal or plant species becomes fitted to its environment.";
    }
    @IBAction func ShowQ3(_ sender: UIButton) {
        q3TV.text = "--Leaf size, shape, and consistency \n--Trunk girth (girth refers to how big around the trunk is) \n--Tree height \n--Canopy cover (canopy cover refers to the tree's overhanging limbs or branches. A good indication of canopy cover would be the amount of shade a tree provides below it.)"
    }
    
}
