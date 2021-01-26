//
//  ViewController.swift
//  RealmDemo
//
//  Created by Uday on 24/01/21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        realm.beginWrite()
        realm.delete(realm.objects(Person.self))
        try! realm.commitWrite()
        save()
        render()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func render(){
        let people = realm.objects(Person.self)
        for person in people{
            print(person.firstName)
        }
    }
    
    func save(){
        let uday = Person()
        uday.firstName = "Uday"
        uday.lastName = "Babariya"
        uday.age = 25
        
        realm.beginWrite()
        realm.add(uday)
        try! realm.commitWrite()
    }
}



extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    
}
