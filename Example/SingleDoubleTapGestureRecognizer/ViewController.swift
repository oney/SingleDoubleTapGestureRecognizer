//
//  ViewController.swift
//  SingleDoubleTapGestureRecognizer
//
//  Created by Howard Yang on 08/22/2015.
//  Copyright (c) 2015 Howard Yang. All rights reserved.
//

import UIKit
import SingleDoubleTapGestureRecognizer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = SingleDoubleTapGestureRecognizer(target: self, singleAction: Selector("singleTap"), doubleAction: Selector("doubleTap"))
        tap.duration = 0.8
        view.addGestureRecognizer(tap)
    }
    
    func singleTap() {
        println("singleTap")
    }
    
    func doubleTap() {
        println("doubleTap")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

