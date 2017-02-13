//
//  Ornithologist5ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Ornithologist5ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var a1TV: UITextView!
    @IBOutlet weak var a2TV: UITextView!
    @IBOutlet weak var q1I1: UIImageView!
    @IBOutlet weak var q1I2: UIImageView!
    @IBOutlet weak var q1I3: UIImageView!
    @IBOutlet weak var q1I4: UIImageView!
    @IBOutlet weak var q1I5: UIImageView!
    
    @IBOutlet weak var nextB: UIButton!
    
    override func loadView() {
        super.loadView();
        bigQL.frame = CGRect(x: 20, y: 98, width: 728, height: 58);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showQ1(_ sender: AnyObject) {
        a1TV.isHidden = false;
        a2TV.isHidden = false;
        q1I1.isHidden = false;
        q1I2.isHidden = false;
        q1I3.isHidden = false;
        q1I4.isHidden = false;
        q1I5.isHidden = false;
        
    }
}
