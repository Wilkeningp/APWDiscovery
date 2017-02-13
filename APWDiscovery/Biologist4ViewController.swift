//
//  Biologist4ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/18/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Biologist4ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var dirc1: UITextView!
    @IBOutlet weak var dirc2: UITextView!
    @IBOutlet weak var dirc3: UITextView!
    @IBOutlet weak var dirc4: UITextView!
    
    @IBOutlet weak var dirc1img: UIImageView!
    @IBOutlet weak var dirc2img: UIImageView!
    @IBOutlet weak var dirc3img1: UIImageView!
    @IBOutlet weak var dirc3img2: UIImageView!
    @IBOutlet weak var dirc4img: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var qrL: UILabel!
    @IBOutlet weak var qrTf: UITextField!
    @IBOutlet weak var qrB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(Biologist4ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(Biologist4ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y -= keyboardSize.height;
            qrTf.text = "";
        }
    }
    
    func keyboardWillHide(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y += keyboardSize.height;
        }
    }
    
    @IBAction func nextStation(_ sender: UIButton) {
        let qrCheck = qrTf.text;
        if( qrCheck == "33295"){
            performSegue(withIdentifier: "toBio5", sender: self);
        } else {
            qrTf.text = "invalid code";
        }
    }
}
