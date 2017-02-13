//
//  Ornithologist9ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 1/17/17.
//  Copyright © 2017 Patrick Wilkening. All rights reserved.
//

import UIKit

class Ornithologist9ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var questL: UILabel!
    @IBOutlet weak var directL: UILabel!
    @IBOutlet weak var responseTV: UITextView!
    @IBOutlet weak var submitB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        NotificationCenter.default.addObserver(self, selector: #selector(Ornithologist9ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(Ornithologist9ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
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
            let file = "Orn\(tmstp).txt";
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
            performSegue(withIdentifier: "toOrn8", sender: self);
            
        }
    }
    
}
