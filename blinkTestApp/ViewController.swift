//
//  ViewController.swift
//  blinkTestApp
//
//  Created by Masaki Horimoto on 2015/09/06.
//  Copyright (c) 2015年 Masaki Horimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blinkView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animateWithDuration(1.0, delay: 0.0,
            options: UIViewAnimationOptions.Repeat, animations: { () -> Void in
            self.blinkView.alpha = 0.0
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(sender: AnyObject) {
        
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.animateWithDuration(0.001, animations: {
            self.blinkView.alpha = 1.0
            })
        
//        //こっちの方法でもOK
//        blinkView.layer.removeAllAnimations()
//        blinkView.alpha = 1.0
    }


}

