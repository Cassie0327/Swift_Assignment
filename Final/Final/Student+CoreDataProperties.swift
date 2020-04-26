//
//  Student+CoreDataProperties.swift
//  Final
//
//  Created by 蔡倩 on 12/13/19.
//  Copyright © 2019 Qian Cai. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var account: String?
    @NSManaged public var major: String?
    @NSManaged public var password: String?
    @NSManaged public var pre_information: String?
    @NSManaged public var register_information: String?
    @NSManaged public var student_credit: Int64
    @NSManaged public var student_id: String?
    @NSManaged public var student_name: String?
    @NSManaged public var course_seat: NSSet?
    @NSManaged public var course_waitlist: NSSet?

}

// MARK: Generated accessors for course_seat
extension Student {

    @objc(addCourse_seatObject:)
    @NSManaged public func addToCourse_seat(_ value: Course)

    @objc(removeCourse_seatObject:)
    @NSManaged public func removeFromCourse_seat(_ value: Course)

    @objc(addCourse_seat:)
    @NSManaged public func addToCourse_seat(_ values: NSSet)

    @objc(removeCourse_seat:)
    @NSManaged public func removeFromCourse_seat(_ values: NSSet)

}

// MARK: Generated accessors for course_waitlist
extension Student {

    @objc(addCourse_waitlistObject:)
    @NSManaged public func addToCourse_waitlist(_ value: Course)

    @objc(removeCourse_waitlistObject:)
    @NSManaged public func removeFromCourse_waitlist(_ value: Course)

    @objc(addCourse_waitlist:)
    @NSManaged public func addToCourse_waitlist(_ values: NSSet)

    @objc(removeCourse_waitlist:)
    @NSManaged public func removeFromCourse_waitlist(_ values: NSSet)

}
