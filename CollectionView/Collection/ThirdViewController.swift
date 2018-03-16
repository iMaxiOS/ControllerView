//
//  ThirdViewController.swift
//  CollectionView
//
//  Created by iMaxiOS on 3/16/18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()

        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            let stringURL = "https://vignette.wikia.nocookie.net/fantendo/images/1/1d/Mario%21%21%21%21%21%21%21%21%21%21%21%21%21%21%21%21.png/revision/latest?cb=20110813093353"
            
            if let url = URL(string: stringURL),
                let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) {
                
                DispatchQueue.main.async {
                    self?.activityIndicator.stopAnimating()
                    self?.imageView.image = image
                }
            }
            
        }
        
    }
    
}
