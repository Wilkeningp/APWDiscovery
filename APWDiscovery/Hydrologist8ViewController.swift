//
//  Hydrologist8ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Hydrologist8ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var a1TV: UITextView!
    @IBOutlet weak var a2TV: UITextView!
    @IBOutlet weak var a3TV: UITextView!
    
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showQ1(_ sender: AnyObject) {
        a1TV.isHidden = false;
        a2TV.isHidden = false;
        a3TV.isHidden = false;
    }
}
