//
//  DetailViewController.swift
//  CollectionView
//
//  Created by iMaxiOS on 12.03.18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            guard let image = menu?.nameImage else { return }
            imageView.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = menu?.name
        }
    }
    
    @IBAction func buyAction(_ sender: Any) {
        let actionController = UIAlertController(title: "New Account", message: "Do you want create new Account?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        actionController.addAction(okAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        actionController.addAction(cancelAction)
        let defaultAction = UIAlertAction(title: "Destructive", style: .destructive, handler: nil)
        actionController.addAction(defaultAction)
        present(actionController, animated: true, completion: nil)
    }
    
    @IBAction func checkOutAction(_ sender: Any) {
//        let actionController = UIAlertController(title: "Hello guy!", message: "What do you want to buy!", preferredStyle: .actionSheet)
//        let okAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        actionController.addAction(okAction)
//        let cancelAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
//        actionController.addAction(cancelAction)
//        present(actionController, animated: true, completion: nil)
    }
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
