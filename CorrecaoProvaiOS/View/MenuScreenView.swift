//
//  MenuScreenView.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class MenuScreenView: BaseView {
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar Receitas", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var listButton: UIButton = {
        let button = UIButton()
        button.setTitle("Lista de Receitas", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    override func addSubviews() {
        addSubview(registerButton)
        addSubview(listButton)
    }
    
    override func setConstraints() {
        
        registerButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        registerButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 100, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 100))
        
        listButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        listButton.anchor(top: nil, leading: nil, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 100, right: 0), size: .init(width: 250, height: 100))
    }
    
}
