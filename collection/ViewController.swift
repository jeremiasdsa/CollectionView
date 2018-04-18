//
//  ViewController.swift
//  collection
//
//  Created by Jeremias Serafim on 13/04/18.
//  Copyright © 2018 Jeremias Serafim. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionCell
        
        // let cell = collectionView.dequeueReusableSupplementaryView(ofKind: "CollectionCell", withReuseIdentifier: "Cell", for: indexPath) as! CollectionCell
        
        // Configure the cell
        cell.isBorderYellow = false
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CollectionCell", bundle:nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionCell
        cell.isBorderYellow = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionCell
        cell.isBorderYellow = false
    }
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        // self.collectionView?.bounds = self.view.bounds
        if UIApplication.shared.statusBarOrientation.isLandscape {
            self.navigationController?.navigationBar.isHidden = false
            print("1")
            
        } else {
             self.navigationController?.navigationBar.isHidden = true
            print("2")
        }
        self.collectionView?.updateConstraintsIfNeeded()
    }


}

