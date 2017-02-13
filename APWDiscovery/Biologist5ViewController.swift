//
//  Biologist5ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/18/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Biologist5ViewController : UIViewController {

    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var q1ATV: UITextView!
    
    @IBOutlet weak var q2TV: UITextView!
    @IBOutlet weak var q2B: UIButton!
    @IBOutlet weak var q2A: UITextView!
    @IBOutlet weak var q2img1: UIImageView!
    @IBOutlet weak var q2img2: UIImageView!
    @IBOutlet weak var q2img3: UIImageView!
    @IBOutlet weak var q2img4: UIImageView!
    @IBOutlet weak var q2img5: UIImageView!
    @IBOutlet weak var q2img6: UIImageView!
    @IBOutlet weak var q2img7: UIImageView!
    @IBOutlet weak var q2img8: UIImageView!
    @IBOutlet weak var q2img9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShowQ1(_ sender: AnyObject) {
        q1ATV.isHidden = false;
    }
    @IBAction func ShowQ2(_ sender: UIButton) {
        q2TV.text = "In science, if you didn't write it down, it didn't happen!  You need to take good field notes in order to analyze your evidence as a whole. Draw what you see, and label your drawings.  Take organized notes.";
        q2A.isHidden = false;
        q2img1.isHidden = false;
        q2img2.isHidden = false;
        q2img3.isHidden = false;
        q2img4.isHidden = false;
        q2img5.isHidden = false;
        q2img6.isHidden = false;
        q2img7.isHidden = false;
        q2img8.isHidden = false;
        q2img9.isHidden = false;
    }
    
    
}
