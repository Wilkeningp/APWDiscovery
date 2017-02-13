//
//  Ornithologist1ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Ornithologist1ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var bigQ: UILabel!
    @IBOutlet weak var introTV: UITextView!
    @IBOutlet weak var directionL: UILabel!
    @IBOutlet weak var scrL: UIScrollView!
    
    @IBOutlet weak var dir1TV: UITextView!
    @IBOutlet weak var dir2TV: UITextView!
    @IBOutlet weak var dir3TV: UITextView!
    @IBOutlet weak var dir1I: UIImageView!
    @IBOutlet weak var dir2I: UIImageView!
    @IBOutlet weak var dir3I: UIImageView!
    @IBOutlet weak var dir4I: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
