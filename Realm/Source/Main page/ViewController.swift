//
//  ViewController.swift
//  Realm
//
//  Created by Marcin Kuptel on 21/01/15.
//  Copyright (c) 2015 Marcin Kuptel. All rights reserved.
//

import UIKit
import Realm

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView:UITableView?
    var films: RLMResults?
    let filmProvider: FilmProvider
    
    required init(coder aDecoder: NSCoder) {
        filmProvider = FilmProvider(realm: RLMRealm.defaultRealm())
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.films = self.filmProvider.fetchAllFilms()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonTapped(sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let filmController = storyboard.instantiateViewControllerWithIdentifier("AddFilmViewController") as UIViewController
        self.navigationController?.pushViewController(filmController, animated: true)
    }
    
    //UITableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let f = self.films {
            return Int(f.count)
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("FilmCell", forIndexPath: indexPath) as UITableViewCell
        if let f = self.films {
            let film = f.objectAtIndex(UInt(indexPath.row)) as Film
            cell.textLabel?.text = film.title
        }
        return UITableViewCell()
    }
}

