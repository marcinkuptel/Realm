//
//  FilmProvider.swift
//  Realm
//
//  Created by Marcin Kuptel on 03/02/15.
//  Copyright (c) 2015 Marcin Kuptel. All rights reserved.
//

import UIKit
import Realm

class FilmProvider: NSObject {
    init(realm: RLMRealm) {
        super.init()
    }
    
    func fetchAllFilms() -> RLMResults! {
        return Film.allObjects()
    }
}
