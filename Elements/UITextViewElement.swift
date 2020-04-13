//
//  UITextViewElement.swift
//  Elements
//
//  Created by Wittaya Malaratn on 6/8/18.
//  Copyright © 2018 Wittaya Malaratn. All rights reserved.
//

import UIKit

class UITextViewElement: UIViewController {
    
    let textView: UITextView = {
        let textView = UITextView()
        
        textView.textColor = UIColor.blackAlpha(alpha: 0.8)
        textView.font = UIFont.PoppinsRegular(size: 16)
        
        textView.layer.borderColor = UIColor.blackAlpha(alpha: 0.3).cgColor
        textView.layer.borderWidth = 0.5
        textView.layer.cornerRadius = 5
        
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        textView.showsVerticalScrollIndicator = false
        textView.isScrollEnabled = false
        
        return textView 
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(textView)
        
        textView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 100, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 200)
    }
}
