//
//  APIHandler.swift
//  InterviewTask
//
//  Created by כפיר פנירי on 04/02/2021.
//

import Foundation

class APIHandler{
    static let shared = APIHandler()

    func syncUsers(completion: @escaping (([User]?)-> Void)){
        var req = URLRequest(url: URL(string: "https://reqres.in/api/users")!)
        req.httpMethod = "GET"
        let session = URLSession.shared
        
        let task = session.dataTask(with: req,completionHandler: { data, response, error -> Void in
            print(response!)
            do{
                let model = try JSONDecoder().decode(APIResponse<[UserServerModel]>.self, from: data!)
                var arr : [User] = []
                
                model.data.forEach {
                    guard let user =  $0.store() else {return}
                    arr.append(user)
                }
                completion(arr)
            } catch {
                print(error)
                completion(nil)
            }
        })
        task.resume()
    }
}

public struct APIResponse<T: Codable>: Codable{
    public let page:Int
    public let total_pages:Int
    public let total:Int
    public let per_page:Int
    public let data: T
}
