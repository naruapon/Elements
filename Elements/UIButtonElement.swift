//
//  UIButtonElement.swift
//  Elements
//
//  Created by Wittaya Malaratn on 6/7/18.
//  Copyright © 2018 Wittaya Malaratn. All rights reserved.
//

import UIKit

class UIButtonElement: UIViewController {
    
    let signUpTitleButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = UIColor.emerald
        button.layer.cornerRadius = 5
        
        button.setTitle("Sign Up".uppercased(), for: .normal)
        button.setTitleColor(UIColor.whiteAlpha(alpha: 0.8), for: .normal)
        button.titleLabel?.font = UIFont.PoppinsMedium(size: 20)
        
        return button
    }()
    
    let signInWithFacebookButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = UIColor.rgb(red: 59, green: 89, blue: 152)
        button.layer.cornerRadius = 5
        
        button.setTitle("Sign in with Facebook", for: .normal)
        button.setTitleColor(UIColor.whiteAlpha(alpha: 0.8), for: .normal)
        button.titleLabel?.font = UIFont.PoppinsMedium(size: 20)
        
        button.setImage(UIImage(named: "facebook-app-logo")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.tintColor = UIColor.whiteAlpha(alpha: 0.8)
        button.imageEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        
        button.addTarget(self, action: #selector(handleSignInWithFacebook), for: .touchUpInside)
        
        return button
    }()
    
    @objc func handleSignInWithFacebook(){
        print("Sign in with Facebook...")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(signUpTitleButton)
        view.addSubview(signInWithFacebookButton)
        
        signUpTitleButton.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 100, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 60)
        
        signInWithFacebookButton.anchor(signUpTitleButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 50, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 60)
    }
}
