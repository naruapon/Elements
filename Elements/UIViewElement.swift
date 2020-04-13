//
//  UIViewElement.swift
//  Elements
//
//  Created by Wittaya Malaratn on 6/7/18.
//  Copyright © 2018 Wittaya Malaratn. All rights reserved.
//

import UIKit

class UIViewElement: UIViewController {

    let viewUI: UIView = {
        let view = UIView()
        
        view.backgroundColor = UIColor.emerald
        
        return view
    }()
    
    let viewUI2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lolipop
        
        view.layer.cornerRadius = 10
        
        return view
    }()
    
    let viewUI3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 10
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.2
        
        return view
    }()
    
    let viewUI4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.mediumBlue
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.2
        
        view.layer.borderColor = UIColor.ruby.cgColor
        view.layer.borderWidth = 5
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        view.addSubview(viewUI)
        viewUI.addSubview(viewUI2)
        viewUI.addSubview(viewUI3)
        viewUI.addSubview(viewUI4)
        
        viewUI.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 100, leftConstant: 50, bottomConstant: 0, rightConstant: 50, widthConstant: 0, heightConstant: 400)
        
        viewUI2.anchor(viewUI.topAnchor, left: viewUI.leftAnchor, bottom: nil, right: nil, topConstant: 50, leftConstant: 20, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 180)
        
        viewUI3.anchor(viewUI.topAnchor, left: nil, bottom: nil, right: viewUI.rightAnchor, topConstant: 50, leftConstant: 0, bottomConstant: 0, rightConstant: 20, widthConstant: 100, heightConstant: 200)
        
        viewUI4.anchor(viewUI2.bottomAnchor, left: viewUI2.leftAnchor, bottom: nil, right: viewUI3.rightAnchor, topConstant: 50, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 100)
    }


}

