//
//  User+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 19/11/23.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var address: String?
    @NSManaged public var age: String?
    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var phone: String?
    @NSManaged public var phones: Phone?

}

extension User : Identifiable {

}
