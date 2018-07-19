//
//  Category.swift
//  Todoey
//
//  Created by S.P. Oei on 10-07-18.
//  Copyright © 2018 Denovo. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class Category : Object {
    @objc dynamic var name : String = ""
    @objc dynamic var color : String = ""
    let items = List<Item>()
}
