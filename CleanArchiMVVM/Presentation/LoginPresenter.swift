//
//  Login.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import Foundation

class LoginPreseter: LoginDataDelegate {
    var usecase = LoginUsecase()
    weak var delegate: loginPresenterDelegate? =  nil
    
    func getUser(id: String) {
        usecase.getUser(id: id)
    }
    
    func setDelegate() {
        usecase.delegate = self
    }
    
    func getSuccessUsers(model: LoginModel) {
        print("getSuccessUsers(model: LoginModel)")
        self.delegate?.setUser(model: model)
    }
}
