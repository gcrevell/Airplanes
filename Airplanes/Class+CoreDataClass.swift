//
//  Class+CoreDataClass.swift
//  Airplanes
//
//  Created by Voltmeter Amperage on 7/6/16.
//  Copyright © 2016 Gabriel Revells. All rights reserved.
//

import Foundation
import CoreData


class Class: NSManagedObject {
    
    var averageWithInet: Double {
        get {
            var total: Int = 0
            
            for obj in students! {
                if let student = obj as? Student {
                    total += student.distanceWith!.inches
                }
            }
            
            let average = Double(total) / Double(students!.count)
            return average
        }
    }
    
    var averageWithoutInet: Double {
        get {
            var total: Int = 0
            
            for obj in students! {
                if let student = obj as? Student {
                    total += student.distanceWithout!.inches
                }
            }
            
            let average = Double(total) / Double(students!.count)
            return average
        }
    }

}
