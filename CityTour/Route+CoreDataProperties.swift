//
//  Route+CoreDataProperties.swift
//  City Tour
//
//  Created by ROGER ALEX. CHIROQUE RAMIREZ on 22/10/16.
//  Copyright © 2016 ROGER ALEX. CHIROQUE RAMIREZ. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Route {

    @NSManaged var name: String?
    @NSManaged var detail: String?

}
