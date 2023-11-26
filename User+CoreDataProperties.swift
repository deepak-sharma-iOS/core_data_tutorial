//
//  User+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 26/11/23.
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
    @NSManaged public var expes: Set<Exp>?

}

// MARK: Generated accessors for expes
extension User {

    @objc(addExpesObject:)
    @NSManaged public func addToExpes(_ value: Exp)

    @objc(removeExpesObject:)
    @NSManaged public func removeFromExpes(_ value: Exp)

    @objc(addExpes:)
    @NSManaged public func addToExpes(_ values: Set<Exp>)

    @objc(removeExpes:)
    @NSManaged public func removeFromExpes(_ values: Set<Exp>)

}

extension User : Identifiable {

}
