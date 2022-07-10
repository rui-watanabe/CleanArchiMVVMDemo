//
//  Login.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import Foundation
import Alamofire
import PromiseKit

class LoginApi {
    var ApiRequest = UserRequest()
    
    func getUser(id: String) -> Promise<LoginModel>  {
        return getUserList(id: id, req: ApiRequest)
        }
    
    func getUserList(id: String, req: UserRequest) -> Promise<LoginModel> {
            return Promise<LoginModel> { resolver in
                let path = req.path
                let url = URL(string: "https://jsonplaceholder.typicode.com" + path)!
                AF.request(url, method: .get)
                    .responseJSON{ response in
                        switch response.result {
                            case .success(let res):
                                do {
                                    let decoder = JSONDecoder()
                                    guard let data = response.data else { return }
                                    let users = try decoder.decode([UserResponse].self, from: data)
                                    let target = users.first(where: {String($0.id) == id})
                                    let user = LoginModel(id: String(target!.id), name: target!.username)
                                    resolver.fulfill(user)
                                } catch {
                                    resolver.reject(error)
                                }
                            case .failure(let error):
                                resolver.reject(error)
                        }
                    }
            }
    }
}
