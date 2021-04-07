//
//  User.swift
//  InterviewTask
//
//  Created by כפיר פנירי on 04/02/2021.
//

import CoreData

public class User: NSManagedObject{
    @NSManaged var avatar:String
    @NSManaged var id: Int16
    @NSManaged var email: String
    @NSManaged var first_name: String
    @NSManaged var last_name: String
}
