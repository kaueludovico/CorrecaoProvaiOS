//
//  ListRecipeViewController.swift
//  CorrecaoProvaiOS
//
//  Created by Kaue Ludovico on 12/01/23.
//

import UIKit

class ListRecipeViewController: UIViewController {
    
    var listRecipeScreenView = ListRecipeScreenView()
    var recipe: [Recipe]?
    
    override func loadView() {
        view = listRecipeScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listRecipeScreenView.collectionView.delegate = self
        listRecipeScreenView.collectionView.dataSource = self
    }
    
    func getRecipe(recipe: Recipe) {
        self.recipe = [recipe]
    }
}

extension ListRecipeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = self.recipe?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: listRecipeScreenView.cellId, for: indexPath) as? ListRecipeCollectionViewCell
        
        if let item = self.recipe?[indexPath.item] {
            cell?.recipe = item
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsRecipeViewController = DetailsRecipeViewController()
        if let recipe = self.recipe {
            detailsRecipeViewController.getRecipe(recipe: recipe[indexPath.item])
        }
        self.navigationController?.pushViewController(detailsRecipeViewController, animated: true)
    }
}
