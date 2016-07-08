//
//  Student+CoreDataProperties.swift
//  Airplanes
//
//  Created by Voltmeter Amperage on 7/6/16.
//  Copyright © 2016 Gabriel Revells. All rights reserved.
//

import Foundation
import CoreData

extension Student {

    @nonobjc class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student");
    }

    @NSManaged var studentName: String?
    @NSManaged var studentsClass: Class?
    @NSManaged var distanceWith: Distance?
    @NSManaged var distanceWithout: Distance?

}
