//
//  SignupViewController.swift
//  CowryWise
//
//  Created by FOLAHANMI KOLAWOLE on 29/09/2020.
//

import UIKit

class LoginViewController: UIViewController {
    
    let signupButtonn: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("SIGN UP", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapSignupp), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Welcome"
        
        view.addSubview(signupButtonn)
        
        _ = signupButtonn.anchor(view.centerYAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 20, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 200, heightConstant: 50)
    }
    
    @objc func didTapSignupp() {
        let vc = UIViewController()
        vc.view.backgroundColor = .systemPink
        navigationController?.pushViewController(vc, animated: true)
        
    }

}
