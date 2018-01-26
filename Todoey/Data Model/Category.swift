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
    @objc dynamic var color : String = "28AAC0"
    let items = List<Item>()
    
}
