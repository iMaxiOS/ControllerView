//
//  ViewController.swift
//  CollectionView
//
//  Created by iMaxiOS on 12.03.18.
//  Copyright © 2018 iMaxiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewController: UICollectionView!
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        let saveAction = UIAlertController(title: "YouTube", message: "save YouTube?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        saveAction.addAction(okAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        saveAction.addAction(cancelAction)
        present(saveAction, animated: true, completion: nil)
    }
    
    @IBAction func addNewAction(_ sender: UIBarButtonItem) {
        let addAction = UIAlertController(title: "add Action", message: "Do you want save YouTube?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        addAction.addAction(okAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        addAction.addAction(cancelAction)
        present(addAction, animated: true, completion: nil)
    }
    
    var itemArray: [Menu] = {
        var instagram = Menu()
        instagram.name = "Instagram"
        instagram.nameImage = "instagram"
        
        var twitter = Menu()
        twitter.name = "Twitter"
        twitter.nameImage = "twitter"
        
        var dropBox = Menu()
        dropBox.name = "DropBox"
        dropBox.nameImage = "dropbox"
        
        var skype = Menu()
        skype.name = "Skype"
        skype.nameImage = "skype"
        
        var googlePlus = Menu()
        googlePlus.name = "Google-Plus"
        googlePlus.nameImage = "google-plus"
        
        var vk = Menu()
        vk.name = "Vkontakte"
        vk.nameImage = "vk"
        
        var whatsApp = Menu()
        whatsApp.name = "WhatApp"
        whatsApp.nameImage = "whatsapp"
        
        var faceBook = Menu()
        faceBook.name = "FaceBook"
        faceBook.nameImage = "facebook"
        
        return [instagram, twitter, dropBox, skype, googlePlus, vk, whatsApp, faceBook]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewController.delegate = self
        viewController.dataSource = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showVC" {
            if let vc = segue.destination as? DetailViewController {
                let menu = sender as? Menu
                vc.menu = menu
            }
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let menuCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell {
            
            menuCell.menu = itemArray[indexPath.row]
            
            return menuCell
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = itemArray[indexPath.row]
        self.performSegue(withIdentifier: "showVC", sender: menu)
    }
}

