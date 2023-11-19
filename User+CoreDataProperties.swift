//
//  User+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 17/09/23.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: String?
    @NSManaged public var phone: String?
    @NSManaged public var address: String?
    @NSManaged public var id: String?

}

extension User : Identifiable {

}
