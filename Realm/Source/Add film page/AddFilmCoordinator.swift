//
//  AddFilmCoordinator.swift
//  Realm
//
//  Created by Marcin Kuptel on 03/02/15.
//  Copyright (c) 2015 Marcin Kuptel. All rights reserved.
//

import UIKit
import Realm

class AddFilmCoordinator: NSObject {
 
    let realm: RLMRealm
    
    init(realm: RLMRealm) {
        self.realm = realm
    }
    
    func addFilm(title: String, director: String, year: Int) -> Bool {
        
        let film = Film()
        film.title = title
        film.director = director
        film.year = year
        
        self.realm.transactionWithBlock { () -> Void in
            self.realm.addObject(film)
        }
        
        println(">>> New film added")
        
        return true
    }
    
}
