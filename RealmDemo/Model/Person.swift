//
//  Person.swift
//  RealmDemo
//
//  Created by Uday on 26/01/21.
//

import Foundation
import RealmSwift

class Person: Object{
    
    @objc dynamic var firstName = ""
    @objc dynamic var lastName = ""
    @objc dynamic var age = 0
}
