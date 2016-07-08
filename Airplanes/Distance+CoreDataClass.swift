//
//  Distance+CoreDataClass.swift
//  Airplanes
//
//  Created by Voltmeter Amperage on 7/6/16.
//  Copyright © 2016 Gabriel Revells. All rights reserved.
//

import Foundation
import CoreData


class Distance: NSManagedObject {
    var blocks:Int {
        get {
            return inches / 9
        }
        set (blockNum) {
            inches = blockNum * 9
        }
    }
    
    var inches: Int {
        get {
            return Int(self.distanceFeet) * 12 + Int(self.distanceInches)
        }
        set (newVal) {
            self.distanceFeet = Int32(newVal / 12)
            self.distanceInches = Int16(newVal % 12)
        }
    }
}
