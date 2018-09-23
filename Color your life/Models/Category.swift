//
//  Category.swift
//  Color your life
//
//  Created by Maha AlDwehy on 10/01/1440 AH.
//  Copyright © 1440 Maha AlDwehy. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
    
    
}
