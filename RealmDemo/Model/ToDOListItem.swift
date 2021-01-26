//
//  ToDOListItem.swift
//  RealmDemo
//
//  Created by Uday on 26/01/21.
//

import RealmSwift
import Foundation

class ToDOListItem: Object {
    
    @objc dynamic var item = ""
    @objc dynamic var date = Date()
}
