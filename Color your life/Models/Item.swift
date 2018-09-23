//
//  Item.swift
//  Color your life
//
//  Created by Maha AlDwehy on 10/01/1440 AH.
//  Copyright © 1440 Maha AlDwehy. All rights reserved.
//

import Foundation
import RealmSwift

class Item : Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
