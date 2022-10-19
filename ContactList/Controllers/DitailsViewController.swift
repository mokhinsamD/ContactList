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
    
    var name: String!
    var surname: String!
    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = phone
        emailLabel.text = email
        title = "\(name ?? "") \(surname ?? "")"
    }


}

