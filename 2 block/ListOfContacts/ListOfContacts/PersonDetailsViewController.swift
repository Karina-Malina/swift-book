//
//  PersonDetailsViewController.swift
//  ListOfContacts
//
//  Created by Karina Blinova on 23.12.2020.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = false
        self.title = "\(person.name) \(person.surname)"
        phoneNumberLabel.text = "Phone: \(person.phone)"
        mailLabel.text = "Email: \(person.mail)"
    }

}
