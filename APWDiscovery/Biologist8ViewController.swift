//
//  Biologist8ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/18/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Biologist8ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var questL: UILabel!
    @IBOutlet weak var directL: UILabel!
    @IBOutlet weak var responseTV: UITextView!
    @IBOutlet weak var submitB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(Biologist8ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(Biologist8ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(_ notification: Notification) {
        /*
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            self.view.frame.origin.y -= keyboardSize.height;
        }
        */
    }
    
    func keyboardWillHide(_ notification: Notification) {
        /*
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            self.view.frame.origin.y += keyboardSize.height;
        }
        */
    }
    
    
    @IBAction func submitResponse(_ sender: AnyObject) {
        if (responseTV.text != ""){
            let tmstp:Int = Int(CFAbsoluteTimeGetCurrent() * 100);
            let file = "Bio\(tmstp).txt";
            let text = responseTV.text;
            
            if let dir = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true).first {
                let path = URL(fileURLWithPath: dir).appendingPathComponent(file);
                do {
                    try text?.write(to: path, atomically: false, encoding: String.Encoding.utf8);
                }
                catch {
                    /* Do nothing */
                }
            }
            performSegue(withIdentifier: "toBio7", sender: self);
            
        }
    }
    
}
