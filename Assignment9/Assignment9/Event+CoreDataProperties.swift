//
//  Event+CoreDataProperties.swift
//  Assignment9
//
//  Created by 蔡倩 on 11/18/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//
//

import Foundation
import CoreData


extension Event {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Event> {
        return NSFetchRequest<Event>(entityName: "Event")
    }

    @NSManaged public var city: String?
    @NSManaged public var end_date: String?
    @NSManaged public var event_description: String?
    @NSManaged public var event_id: String?
    @NSManaged public var event_name: String?
    @NSManaged public var start_date: String?
    @NSManaged public var state: String?
    @NSManaged public var street: String?

}
