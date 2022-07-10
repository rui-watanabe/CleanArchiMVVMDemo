//
//  Login.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import Foundation
import PromiseKit

class LoginUsecase {
    var loginApi = LoginApi()
    weak var delegate: LoginDataDelegate? = nil
    
    func getUser(id: String) {
        loginApi.getUser(id: id).done{ result in
            self.delegate?.getSuccessUsers(model: result)
        }
    }
}
