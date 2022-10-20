//
//  DitailsViewController.swift
//  ContactList
//
//  Created by Дарина Самохина on 19.10.2022.
//

import UIKit

class DitailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        title = person.fullName
    }


}

