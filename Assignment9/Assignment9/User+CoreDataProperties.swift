//
//  User+CoreDataProperties.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var email: String?
    @NSManaged public var interests: String?
    @NSManaged public var phone: String?
    @NSManaged public var skills: String?
    @NSManaged public var subscription: String?
    @NSManaged public var user_id: String?
    @NSManaged public var user_name: String?
    @NSManaged public var state: String?
    @NSManaged public var street: String?
    @NSManaged public var city: String?
    

}
