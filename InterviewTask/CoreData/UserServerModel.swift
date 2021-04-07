//
//  UserServerModel.swift
//  InterviewTask
//
//  Created by כפיר פנירי on 04/02/2021.
//

import Foundation

struct UserServerModel: Codable {
    let avatar: String
    let email: String
    let first_name: String
    let last_name: String
    let id: Int
    
    
    static let database = DatabaseHandler.shared
    func store() -> User? {
        guard let user = UserServerModel.database.add(User.self) else {return nil}
        user.avatar = avatar
        user.email = email
        user.first_name = first_name
        user.last_name = last_name
        user.id = Int16(id)
        UserServerModel.database.save()
        return user
    }
}
