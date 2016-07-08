//
//  Distance+CoreDataProperties.swift
//  Airplanes
//
//  Created by Voltmeter Amperage on 7/6/16.
//  Copyright © 2016 Gabriel Revells. All rights reserved.
//

import Foundation
import CoreData

extension Distance {

    @nonobjc class func fetchRequest() -> NSFetchRequest<Distance> {
        return NSFetchRequest<Distance>(entityName: "Distance");
    }

    @NSManaged var distanceFeet: Int32
    @NSManaged var distanceInches: Int16
    @NSManaged var studentWith: Student?
    @NSManaged var studentWithout: Student?

}
