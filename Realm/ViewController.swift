//
//  ViewController.swift
//  Realm
//
//  Created by Marcin Kuptel on 21/01/15.
//  Copyright (c) 2015 Marcin Kuptel. All rights reserved.
//

import UIKit
import Realm

class DemoObject: RLMObject {
    dynamic var myProp = ""
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RLMRealm.defaultRealm().transactionWithBlock { () -> Void in
            println("Creating demo object")
            DemoObject.createInDefaultRealmWithObject(["hello!"])
        }
        
        for object in DemoObject.allObjects() {
            println(object.description)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

