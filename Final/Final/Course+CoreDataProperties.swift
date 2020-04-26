//
//  Course+CoreDataProperties.swift
//  Final
//
//  Created by 蔡倩 on 12/13/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var course_description: String?
    @NSManaged public var course_id: String?
    @NSManaged public var course_name: String?
    @NSManaged public var hour: Int64
    @NSManaged public var instructor: String?
    @NSManaged public var prerequisites: String?
    @NSManaged public var seat: Int64
    @NSManaged public var seat_max: Int64
    @NSManaged public var position: String?
    @NSManaged public var time: String?
    @NSManaged public var waitlist: Int64
    @NSManaged public var waitlist_max: Int64
    @NSManaged public var subject: String?
    @NSManaged public var seat_person: Student?
    @NSManaged public var waitlist_person: NSSet?

}

// MARK: Generated accessors for waitlist_person
extension Course {

    @objc(addWaitlist_personObject:)
    @NSManaged public func addToWaitlist_person(_ value: Student)

    @objc(removeWaitlist_personObject:)
    @NSManaged public func removeFromWaitlist_person(_ value: Student)

    @objc(addWaitlist_person:)
    @NSManaged public func addToWaitlist_person(_ values: NSSet)

    @objc(removeWaitlist_person:)
    @NSManaged public func removeFromWaitlist_person(_ values: NSSet)

}
