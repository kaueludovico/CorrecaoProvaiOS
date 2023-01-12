//
//  ViewController.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuScreenView = MenuScreenView()
    
    var recipe: Recipe?
    
    override func loadView() {
        view = menuScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        menuScreenView.registerButton.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        menuScreenView.listButton.addTarget(self, action: #selector(navigateToList), for: .touchUpInside)
    }
    
    func getRecipe(recipe: Recipe) {
        self.recipe = recipe
    }
    
    @objc func navigateToRegister() {
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    @objc func navigateToList() {
        let listRecipeViewController = ListRecipeViewController()
        if let recipe = self.recipe {
            listRecipeViewController.getRecipe(recipe: recipe)
        }
        self.navigationController?.pushViewController(listRecipeViewController, animated: true)
    }
}

