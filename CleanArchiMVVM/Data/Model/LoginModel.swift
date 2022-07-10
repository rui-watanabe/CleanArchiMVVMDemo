//
//  Login.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import Foundation

struct User {
    var id: String
    var name: String
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

class LoginModel {
    var user: User
    init(id: String, name: String) {
        user = User(id: id, name: name)
    }
    
    func getUser() -> User{
        return user
    }
}
