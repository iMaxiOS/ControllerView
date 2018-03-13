//
//  SecondViewController.swift
//  CollectionView
//
//  Created by iMaxiOS on 13.03.18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            let stringURL = "https://openclipart.org/image/800px/svg_to_png/263009/African-man-hello-suit.png"
            
            if let url = URL(string: stringURL),
                let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) {
                
                DispatchQueue.main.async {
                    self?.activityIndicator.stopAnimating()
                    self?.secondImageView.image = image
                }
            }
        }
        
    }
}
