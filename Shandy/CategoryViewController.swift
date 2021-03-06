//
//  CategoryVC.swift
//  Shandy
//
//  Created by Vitaliy on 30/08/16.
//  Copyright © 2016 Vitaliy. All rights reserved.
//

import UIKit
import Alamofire

class CategoryViewController: UIViewController {
    
    private var _category: Category!
    
    var category: Category {
        get {
            return _category
        }
        set {
            _category = newValue
        }
    }
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var totalRecipesCount: UILabel!
    @IBOutlet weak var descriptionView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI() {
        titleLabel.text = _category.name
        totalRecipesCount.text = _category.recipesCount
        descriptionView.text = _category.description
    }
}
