//
//  Data.swift
//  Todoey-Realm
//
//  Created by Salah Khaled on 4/22/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import RealmSwift

// Object is a class used to define Realm model objects.
class Items: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var date: Date?
    // Relationship
    var parentCategory = LinkingObjects(fromType: Categories.self, property: "items")
}
