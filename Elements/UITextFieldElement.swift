//
//  UITextFieldElement.swift
//  Elements
//
//  Created by Wittaya Malaratn on 6/8/18.
//  Copyright © 2018 Wittaya Malaratn. All rights reserved.
//

import UIKit

class UITextFieldElement: UIViewController {
    
    let textField: UITextField = {
        let textField = UITextField()
        
        textField.textColor = UIColor.blackAlpha(alpha: 0.8)
        textField.font = UIFont.PoppinsRegular(size: 16)
        
//        textField.placeholder = "Full Name"
        textField.attributedPlaceholder = NSAttributedString(string: "Full Name", attributes: [NSAttributedString.Key.font : UIFont.PoppinsRegular(size: 16), NSAttributedString.Key.foregroundColor: UIColor.blackAlpha(alpha: 0.3)])
        
        textField.layer.borderColor = UIColor.blackAlpha(alpha: 0.3).cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 5
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 60))
        textField.leftViewMode = UITextField.ViewMode.always
        
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.textColor = UIColor.blackAlpha(alpha: 0.8)
        textField.font = UIFont.PoppinsRegular(size: 16)
        
        textField.attributedPlaceholder = NSAttributedString(string: "E-Mail", attributes: [NSAttributedString.Key.font : UIFont.PoppinsRegular(size: 16), NSAttributedString.Key.foregroundColor: UIColor.blackAlpha(alpha: 0.3)])
        
        textField.layer.borderColor = UIColor.blackAlpha(alpha: 0.3).cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 5
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 60))
        textField.leftViewMode = UITextField.ViewMode.always
        
        textField.keyboardType = .emailAddress
        
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        
        textField.textColor = UIColor.blackAlpha(alpha: 0.8)
        textField.font = UIFont.PoppinsRegular(size: 16)
        
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.font : UIFont.PoppinsRegular(size: 16), NSAttributedString.Key.foregroundColor: UIColor.blackAlpha(alpha: 0.3)])
        
        textField.layer.borderColor = UIColor.blackAlpha(alpha: 0.3).cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 5
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 60))
        textField.leftViewMode = UITextField.ViewMode.always
        
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(textField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        
        textField.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 100, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 60)
        
        emailTextField.anchor(textField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 20, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 60)
        
        passwordTextField.anchor(emailTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 20, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 60)
    }
}
