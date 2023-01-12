//
//  DetailsRecipeViewController.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class DetailsRecipeViewController: UIViewController {
    
    let detailsScreenView = DetailsScreenView()
    
    override func loadView() {
        view = detailsScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getRecipe(recipe: Recipe) {
        detailsScreenView.recipe = recipe
    }
}
