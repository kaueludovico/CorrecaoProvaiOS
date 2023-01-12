//
//  RegisterViewController.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreenView = RegisterScreenView()
    
    override func loadView() {
        view = registerScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Ação do botão valida campos antes de navegar com dados
        self.registerScreenView.registerButton.addTarget(self, action: #selector(validateField), for: .touchUpInside)
    }
    
    // Valida campos vazios
    @objc func validateField() {
        if (self.registerScreenView.titleRecipe.text?.isEmpty ?? false ||
            self.registerScreenView.ingredientsRecipe.text?.isEmpty ?? false) ||
            self.registerScreenView.preparationRecipe.text?.isEmpty ?? false {
            
            print("Erro")
        } else {
            createRecipe()
        }
    }
    
    // Cria a receita
    func createRecipe() {
        let recipe = Recipe(
            title: registerScreenView.titleRecipe.text,
            ingredients: registerScreenView.ingredientsRecipe.text,
            preparation: registerScreenView.preparationRecipe.text)
        
        let menuViewController = MenuViewController()
        menuViewController.getRecipe(recipe: recipe)
        self.navigationController?.pushViewController(menuViewController, animated: true)
    }
}
