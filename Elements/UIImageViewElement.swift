//
//  UIImageViewElement.swift
//  Elements
//
//  Created by Wittaya Malaratn on 6/7/18.
//  Copyright © 2018 Wittaya Malaratn. All rights reserved.
//

import UIKit

class UIImageViewElement: UIViewController {
    
    let coverImageView: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "ian-simmonds-274502-unsplash")
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 200/2
        
        return image
    }()
    
    let coverImageView2: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "ian-simmonds-274502-unsplash")
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 200/2
        
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(coverImageView)
        view.addSubview(coverImageView2)
        
        coverImageView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 100, leftConstant: 50, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
        
        coverImageView2.anchor(coverImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 50, leftConstant: 50, bottomConstant: 0, rightConstant: 0, widthConstant: 200, heightConstant: 200)
    }
}
