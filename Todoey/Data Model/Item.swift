//
//  Item.swift
//  Todoey
//
//  Created by J McAuley on 1/22/18.
//  Copyright © 2018 USEngineering Solutions. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date = Date()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
    
}
