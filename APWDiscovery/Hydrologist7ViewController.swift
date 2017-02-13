//
//  Hydrologist7ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 10/16/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Hydrologist7ViewController : UIViewController {
    
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
    @IBOutlet weak var dir6I: UIImageView!
    @IBOutlet weak var dir7I: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var qrL: UILabel!
    @IBOutlet weak var qrTF: UITextField!
    @IBOutlet weak var goB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(Hydrologist7ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(Hydrologist7ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func keyboardWillShow(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y -= keyboardSize.height;
            qrTF.text = "";
        }
    }
    
    func keyboardWillHide(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y += keyboardSize.height;
        }
    }
    
    @IBAction func nextPage(_ sender: AnyObject) {
        let qrCheck = qrTF.text;
        if (qrCheck == "12345") {
            performSegue( withIdentifier: "toHyd10", sender: self);
        } else {
            qrTF.text = "invalid code";
        }
    }
    
}
