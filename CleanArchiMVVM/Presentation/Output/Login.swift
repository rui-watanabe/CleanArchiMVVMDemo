//
//  Login.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import Foundation

protocol loginPresenterDelegate: AnyObject {
    func setUser(model: LoginModel)
}
