//
//  Film.swift
//  Realm
//
//  Created by Marcin Kuptel on 03/02/15.
//  Copyright (c) 2015 Marcin Kuptel. All rights reserved.
//

import UIKit
import Realm

class Film: RLMObject {
    dynamic var title: String = ""
    dynamic var director: String = ""
    dynamic var year: Int = 0
    
    override class func primaryKey() -> String {
        return "title"
    }
}
