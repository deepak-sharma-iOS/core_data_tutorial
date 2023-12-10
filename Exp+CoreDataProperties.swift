//
//  Exp+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 10/12/23.
//
//

import Foundation
import CoreData


extension Exp {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Exp> {
        return NSFetchRequest<Exp>(entityName: "Exp")
    }

    @NSManaged public var name: String?
    @NSManaged public var years: String?
    @NSManaged public var users: User?

}

extension Exp : Identifiable {

}
