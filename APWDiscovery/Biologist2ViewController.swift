//
//  Biologist2ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/18/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Biologist2ViewController : UIViewController {
    
    // MARK: Properties:
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var BigQL: UILabel!
    
    @IBOutlet weak var quest1TV: UITextView!
    @IBOutlet weak var quest1B: UIButton!
    @IBOutlet weak var quest1img1: UIImageView!
    @IBOutlet weak var quest1img2: UIImageView!
    @IBOutlet weak var quest1img3: UIImageView!
    @IBOutlet weak var quest1img4: UIImageView!
    
    @IBOutlet weak var quest2TV: UITextView!
    @IBOutlet weak var quest2B: UIButton!
    @IBOutlet weak var quest2img1: UIImageView!
    
    @IBOutlet weak var ContinueB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func ShowQ1(_ sender: UIButton) {
        quest1TV.text = "All living things can be divided into two main groups: The Animal Kingdom and the Plant Kingdom.  So, animals include more than just mammals. They also include insects, reptiles, birds, and fish.";
        quest1img1.isHidden = false;
        quest1img2.isHidden = false;
        quest1img3.isHidden = false;
        quest1img4.isHidden = false;
    }
    
    @IBAction func ShowQ2(_ sender: UIButton) {
        quest2TV.text = "Evidence is a sign that helps lead to a conclusion.  So, you will be looking for signs of animal life.";
        quest2img1.isHidden = false;
    }
    
    
}
