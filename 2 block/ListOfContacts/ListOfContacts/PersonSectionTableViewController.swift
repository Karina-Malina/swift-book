//
//  PersonSectionTableViewController.swift
//  ListOfContacts
//
//  Created by Karina Blinova on 23.12.2020.
//

import UIKit

class PersonSectionTableViewController: UITableViewController {
    
    let personList = DataManager().randomPersons

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellInSection", for: indexPath)
        cell.textLabel?.text = personList[indexPath.section].phone

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionTitle = "\(personList[section].name) \(personList[section].surname)"
        return sectionTitle
    }
}
