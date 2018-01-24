//
//  Category.swift
//  Todoey
//
//  Created by J McAuley on 1/22/18.
//  Copyright © 2018 USEngineering Solutions. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    
    @objc dynamic var name : String = ""
    let items = List<Item>()
    
}
