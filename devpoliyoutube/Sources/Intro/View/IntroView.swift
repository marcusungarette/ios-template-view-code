//
//  IntroView.swift
//  devpoliyoutube
//
//  Created by Marcus on 24/01/22.
//

import UIKit


class IntroView: UIView {
    private lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "{Marcus Ungarette}"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .lightGray
        addSubViews()
        constrainHelloLabel()
        constrainNameLabel()
    }

    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubViews(){
        addSubview(helloLabel)
        addSubview(nameLabel)
    }
    
    private func constrainHelloLabel(){
       let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
       
    }
    
    private func constrainNameLabel(){
       let constraint = [
        nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 12),
        nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
        ]
        
        constraint.forEach{ (item) in
            item.isActive = true
        }
       
    }
}
