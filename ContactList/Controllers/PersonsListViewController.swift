//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Дарина Самохина on 19.10.2022.
//

import UIKit

protocol SecondPersonsListViewControllerDelegate {
    func returnPersonsList() -> [Person]
}

class PersonsListViewController: UITableViewController {
    
    let personsList = Person.retunPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = personsList[indexPath.row]
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ditailsVC = segue.destination as? DitailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        ditailsVC.person = personsList[indexPath.row]
        
//        guard let tabBarVC = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarVC.viewControllers else { return }
//        viewControllers.forEach { viewController in
//            if let secondPersonsListVC = viewController as? SecondPersonsListViewController {
//                secondPersonsListVC.delegate = self
//            }
//
//        }
//
//
//        guard let secondPersonsListVC = segue.destination as? SecondPersonsListViewController else {
//            return
//        }
//        secondPersonsListVC.delegate = self
    }

}

extension PersonsListViewController: SecondPersonsListViewControllerDelegate {
    func returnPersonsList() -> [Person] {
        personsList
    }
    
    
}
