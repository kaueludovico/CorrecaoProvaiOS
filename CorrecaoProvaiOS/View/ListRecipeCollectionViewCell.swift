//
//  ListRecipeCollectionViewCell.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class ListRecipeCollectionViewCell: BaseCell {
    
    var recipe: Recipe? {
        didSet {
            titleRecipe.text = recipe?.title
            ingredientsRecipe.text = recipe?.ingredients
            preparationRecipe.text = recipe?.preparation
        }
    }
    
    lazy var titleRecipe: UILabel = {
        let label = UILabel()
        label.text = "Nome da receita"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()

    lazy var ingredientsRecipe: UILabel = {
        let label = UILabel()
        label.text = "Ingredientes da receita"
        return label
    }()
    
    lazy var preparationRecipe: UILabel = {
        let label = UILabel()
        label.text = "Modo de preparo da receita"
        return label
    }()
    
    override func addSubviews() {
        backgroundColor = .gray
        addSubview(titleRecipe)
        addSubview(ingredientsRecipe)
        addSubview(preparationRecipe)
    }
    
    override func setConstraints() {
        titleRecipe.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0), size: .init(width: 200, height: 40))
        
        ingredientsRecipe.anchor(top: titleRecipe.bottomAnchor, leading: titleRecipe.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
        preparationRecipe.anchor(top: ingredientsRecipe.bottomAnchor, leading: ingredientsRecipe.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 100))
        
    }
}
