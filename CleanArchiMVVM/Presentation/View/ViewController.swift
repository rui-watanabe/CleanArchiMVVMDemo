//
//  ViewController.swift
//  CleanArchiMVVM
//
//  Created by watar on 2022/06/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    var loginModel = LoginModel(id: "", name: "")
    var presenter = LoginPreseter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        presenter.delegate = self
        presenter.setDelegate()
        presenter.getUser(id: "1")
    }
    
    @IBAction func onLogin(_ sender: Any) {
        print(idTextField.text!)
        presenter.getUser(id: idTextField.text!)
    }
}

extension ViewController: loginPresenterDelegate {
    func setUser(model: LoginModel) {
        loginModel = model
        nameLabel.text = loginModel.getUser().name
    }
}
