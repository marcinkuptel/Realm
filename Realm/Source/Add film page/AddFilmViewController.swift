//
//  AddFilmViewController.swift
//  Realm
//
//  Created by Marcin Kuptel on 03/02/15.
//  Copyright (c) 2015 Marcin Kuptel. All rights reserved.
//

import UIKit
import Realm

class AddFilmViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField?
    @IBOutlet weak var directorTextField: UITextField?
    @IBOutlet weak var yearTextField: UITextField?
    
    let coordinator: AddFilmCoordinator
    
    required init(coder aDecoder: NSCoder) {
        self.coordinator = AddFilmCoordinator(realm: RLMRealm.defaultRealm())
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addFilmButtonTapped(sender: UIButton) {
        let title = self.titleTextField?.text
        let director = self.directorTextField?.text
        let year = self.yearTextField?.text.toInt()
        self.coordinator.addFilm(title!, director: director!, year: year!)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
