//
//  Item.swift
//  Todoey
//
//  Created by S.P. Oei on 10-07-18.
//  Copyright © 2018 Denovo. All rights reserved.
//

import Foundation
import RealmSwift

class Item : Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated = Date()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
