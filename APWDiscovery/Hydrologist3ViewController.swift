//
//  Hydrologist3ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Hydrologist3ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var DirectionL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var dir1TV: UITextView!
    @IBOutlet weak var dir2TV: UITextView!
    @IBOutlet weak var dir3TV: UITextView!
    @IBOutlet weak var dir4TV: UITextView!
    @IBOutlet weak var dir1I: UIImageView!
    @IBOutlet weak var dir2I: UIImageView!
    @IBOutlet weak var dir3I: UIImageView!
    @IBOutlet weak var dir4I: UIImageView!
    @IBOutlet weak var dir5I: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}