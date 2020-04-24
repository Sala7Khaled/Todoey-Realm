//
//  Categories.swift
//  Todoey-Realm
//
//  Created by Salah Khaled on 4/22/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit
import RealmSwift

// Object is a class used to define Realm model objects.
class Categories: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var color: String = ""
    // Relationship
    let items = List<Items>()
}
