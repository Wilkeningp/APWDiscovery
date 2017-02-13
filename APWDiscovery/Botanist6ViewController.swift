//
//  Botanist6ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/20/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Botanist6ViewController : UIViewController {
    
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var dircL: UILabel!
    @IBOutlet weak var scrollV: UIScrollView!
    
    @IBOutlet weak var dirc1: UITextView!
    @IBOutlet weak var dirc2: UITextView!
    @IBOutlet weak var dirc3: UITextView!
    
    @IBOutlet weak var dircImg1: UIImageView!
    @IBOutlet weak var dircImg2: UIImageView!
    @IBOutlet weak var dircImg3: UIImageView!
    @IBOutlet weak var dircImg4: UIImageView!
    @IBOutlet weak var dircImg5: UIImageView!
    @IBOutlet weak var dircImg6: UIImageView!
    @IBOutlet weak var dircImg7: UIImageView!
    @IBOutlet weak var dircImg8: UIImageView!
    @IBOutlet weak var dircImg9: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var qrL: UILabel!
    @IBOutlet weak var qrTF: UITextField!
    @IBOutlet weak var qrB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(Botanist6ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(Botanist6ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    @IBAction func NextStation(_ sender: Any) {
        let qrCheck = qrTF.text;
        if (qrCheck == "99362") {
            performSegue(withIdentifier: "toBot8", sender: self);
        } else {
            qrTF.text = "invalid code";
        }
    }
    
    /*
    func NextStation(_ sender: UIButton) {
        let qrCheck = qrTF.text;
        if (qrCheck == "99362") {
            performSegue(withIdentifier: "toBot8", sender: self);
        } else {
            qrTF.text = "invalid code";
        }
    }
    */
    
    
}

