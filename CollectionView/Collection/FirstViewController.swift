//
//  FirstViewController.swift
//  CollectionView
//
//  Created by iMaxiOS on 13.03.18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            let stringURL = "https://vignette.wikia.nocookie.net/p__/images/0/05/Rosalina_-_Mario_Party_10.png/revision/latest?cb=20151230222739&path-prefix=protagonist"
            
            if let url = URL(string: stringURL),
                let data = try? Data(contentsOf:url),
                let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    
                    self?.activityIndicator.stopAnimating()
                    self?.imageView.image = image
                }
            }
        }
    }
    

}
