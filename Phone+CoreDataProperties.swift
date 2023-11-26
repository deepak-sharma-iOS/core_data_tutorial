//
//  Phone+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 19/11/23.
//
//

import Foundation
import CoreData


extension Phone {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Phone> {
        return NSFetchRequest<Phone>(entityName: "Phone")
    }

    @NSManaged public var provider: String?
    @NSManaged public var phone: String?
    @NSManaged public var users: User?

}

extension Phone : Identifiable {

}
