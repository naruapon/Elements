//
//  UILabelElement.swift
//  Elements
//
//  Created by Wittaya Malaratn on 6/7/18.
//  Copyright © 2018 Wittaya Malaratn. All rights reserved.
//

import UIKit

class UILabelElement: UIViewController {
    
    let titelLabel: UILabel = {
        let label = UILabel()
        
        label.text = "UILabel"
        label.textColor = UIColor.emerald
        label.font = UIFont.PoppinsMedium(size: 24)
        
        return label
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        
//        label.text = "A view that displays one or more lines of read-only text, often used in conjunction with controls to describe their intended purpose."
        
        label.text = """
        A view that displays one
        or more lines of read-only text,
        often used in conjunction with
        controls to describe their
        intended purpose.
        """
        label.textColor = UIColor.blackAlpha(alpha: 0.8)
        label.font = UIFont.PoppinsRegular(size: 16)
        label.numberOfLines = 0
        
        return label
    }()
    
    let attributedTextLabel: UILabel = {
        let label = UILabel()
        
        let title = "Title"
        let text = "\n\nA view that displays one or more lines of read-only text, often used in conjunction with controls to describe their intended purpose."
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.PoppinsMedium(size: 24), NSAttributedString.Key.foregroundColor: UIColor.emerald])
        attributedText.append(NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.font : UIFont.PoppinsRegular(size: 16), NSAttributedString.Key.foregroundColor: UIColor.blackAlpha(alpha: 0.8)]))
        
        
        label.attributedText = attributedText
        label.numberOfLines = 0
        
        return label
    }()
    
    let attributedTextParagraphLabel: UILabel = {
        let label = UILabel()
        
        let title = "Title"
        let text = "\n\nA view that displays one or more lines of read-only text, often used in conjunction with controls to describe their intended purpose."
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.PoppinsMedium(size: 24), NSAttributedString.Key.foregroundColor: UIColor.emerald])
        attributedText.append(NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.font : UIFont.PoppinsRegular(size: 16), NSAttributedString.Key.foregroundColor: UIColor.blackAlpha(alpha: 0.8)]))
        
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        
        label.attributedText = attributedText
        label.numberOfLines = 0
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(titelLabel)
        view.addSubview(textLabel)
        view.addSubview(attributedTextLabel)
        view.addSubview(attributedTextParagraphLabel)
        
        titelLabel.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 100, leftConstant: 50, bottomConstant: 0, rightConstant: 50, widthConstant: 0, heightConstant: 0)
    
        textLabel.anchor(titelLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 30, leftConstant: 50, bottomConstant: 0, rightConstant: 50, widthConstant: 0, heightConstant: 0)
        
        attributedTextLabel.anchor(textLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 50, leftConstant: 50, bottomConstant: 0, rightConstant: 50, widthConstant: 0, heightConstant: 0)
        
        attributedTextParagraphLabel.anchor(attributedTextLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 50, leftConstant: 50, bottomConstant: 0, rightConstant: 50, widthConstant: 0, heightConstant: 0)
    
    }
}
