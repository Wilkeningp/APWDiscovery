//
//  Botanist8ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 1/17/17.
//  Copyright © 2017 Patrick Wilkening. All rights reserved.
//

import UIKit

class Botanist8ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var questL: UILabel!
    @IBOutlet weak var direcL: UILabel!
    @IBOutlet weak var responseTV: UITextView!
    @IBOutlet weak var submitB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    @IBAction func submitResponse(_ sender: Any) {
        if( responseTV.text != "") {
            let tmstp:Int = Int(CFAbsoluteTimeGetCurrent() * 100);
            let file = "Bot\(tmstp).txt";
            let text = responseTV.text;
            
            if let dir = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true).first {
                let path = URL(fileURLWithPath: dir).appendingPathComponent(file);
                do {
                    try text?.write(to: path, atomically: false, encoding: String.Encoding.utf8);
                }
                catch {
                    // Do Nothing
                }
            }
            performSegue(withIdentifier: "toBot7", sender: self);
            
        }
    }
}
