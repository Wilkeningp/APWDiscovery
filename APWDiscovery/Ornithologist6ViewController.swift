//
//  Ornithologist6ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Ornithologist6ViewController : UIViewController {
    
    @IBOutlet weak var TitleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var scrV: UIScrollView!
    
    @IBOutlet weak var q1TV: UITextView!
    @IBOutlet weak var q1B: UIButton!
    @IBOutlet weak var a1TV: UITextView!
    @IBOutlet weak var q1I1: UIImageView!
    @IBOutlet weak var q1I2: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var nextB: UIButton!
    
    override func loadView() {
        super.loadView();
        
        //nextB.frame.origin.x = 608;
        nextB.frame = CGRect(x: 608, y: 974, width: 140, height: 30);
        //bigQL.frame.size.width = 728;
        bigQL.frame = CGRect(x: 20, y: 98, width: 728, height: 58);
        //scrV.frame.size.width = 728;
        scrV.frame = CGRect(x: 20, y: 164, width: 728, height: 802);
        //TitleL.frame.size.width = 728;
        TitleL.frame = CGRect(x: 20, y: 20, width: 728, height: 70);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showQ1(_ sender: AnyObject) {
        a1TV.isHidden = false;
        q1I1.isHidden = false;
        q1I2.isHidden = false;
    }
    
}
