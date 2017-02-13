//
//  Biologist1ViewController.swift
//  APWDiscovery
//
//  Created by Patrick Wilkening on 9/18/16.
//  Copyright © 2016 Patrick Wilkening. All rights reserved.
//

import UIKit

class Biologist1ViewController : UIViewController{
    
    // MARK: Properties
    @IBOutlet weak var titleL: UILabel!
    @IBOutlet weak var bigQL: UILabel!
    @IBOutlet weak var textTV: UITextView!
    @IBOutlet weak var directionL: UILabel!
    @IBOutlet weak var routeSV: UIScrollView!
    
    @IBOutlet weak var dir1: UITextView!
    @IBOutlet weak var dir2: UITextView!
    @IBOutlet weak var dir3: UITextView!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var backB: UIButton!
    @IBOutlet weak var QRCodeL: UILabel!
    @IBOutlet weak var QRCodeTF: UITextField!
    @IBOutlet weak var GoB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(Biologist1ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter.default.addObserver(self, selector: #selector(Biologist1ViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y -= keyboardSize.height;
            QRCodeTF.text = "";
        }
    }
    
    func keyboardWillHide(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y += keyboardSize.height;
        }
    }
    
    
    @IBAction func nextPage(_ sender: UIButton) {
        let qrCheck = QRCodeTF.text;
        if (qrCheck == "27696"){
            self.performSegue(withIdentifier: "toBio2", sender: self);
        } else {
            QRCodeTF.text = "invaild code";
        }
    }
    
    
}
