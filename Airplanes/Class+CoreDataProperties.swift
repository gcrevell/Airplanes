//
//  Class+CoreDataProperties.swift
//  Airplanes
//
//  Created by Voltmeter Amperage on 7/6/16.
//  Copyright © 2016 Gabriel Revells. All rights reserved.
//

import Foundation
import CoreData

extension Class {

    @nonobjc class func fetchRequest() -> NSFetchRequest<Class> {
        return NSFetchRequest<Class>(entityName: "Class");
    }

    @NSManaged var classID: String?
    @NSManaged var students: NSSet?

}
