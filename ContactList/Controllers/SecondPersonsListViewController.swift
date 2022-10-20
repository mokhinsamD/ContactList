//
//  SecondPersonsListViewController.swift
//  ContactList
//
//  Created by Дарина Самохина on 19.10.2022.
//




// этот контроллер не работает, можно не проверять.
//у меня не получилось передать через делегат массив с данными. 



import UIKit

class SecondPersonsListViewController: UITableViewController {

    var delegate: SecondPersonsListViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        delegate.returnPersonsList().count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }


//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
//        var content = cell.defaultContentConfiguration()
//        let contact = personsList[indexPath.row]
//        content.text = contact.fullName
//        cell.contentConfiguration = content
//        return cell
//    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
////        personsList[section].fullName
//    }


}
