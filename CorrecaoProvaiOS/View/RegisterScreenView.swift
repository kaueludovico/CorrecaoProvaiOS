//
//  RegisterScreenView.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class RegisterScreenView: BaseView {
    
    lazy var titleRecipe: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nome da receita"
        return textField
    }()
    
    lazy var ingredientsRecipe: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Ingredientes da receita"
        return textField
    }()
    
    lazy var preparationRecipe: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Modo de preparo da receita"
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar Receita", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleRecipe)
        addSubview(ingredientsRecipe)
        addSubview(preparationRecipe)
        addSubview(registerButton)
    }
    
    override func setConstraints() {
        
        titleRecipe.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 100, left: 16, bottom: 0, right: 16), size: .init(width: 363, height: 40))
        
        ingredientsRecipe.anchor(top: titleRecipe.bottomAnchor, leading: titleRecipe.leadingAnchor, bottom: nil, trailing: titleRecipe.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 80))
        
        preparationRecipe.anchor(top: ingredientsRecipe.bottomAnchor, leading: ingredientsRecipe.leadingAnchor, bottom: nil, trailing: ingredientsRecipe.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 80))
        
        registerButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        registerButton.anchor(top: preparationRecipe.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 50))
        
    }
}
