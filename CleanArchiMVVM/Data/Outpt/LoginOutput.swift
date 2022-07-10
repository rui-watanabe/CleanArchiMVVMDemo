//
//  LoginOutput.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import Foundation

protocol LoginDataDelegate: AnyObject {
    func getSuccessUsers(model: LoginModel)
}
