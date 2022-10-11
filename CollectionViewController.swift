//
//  CollectionViewController.swift
//  Tableviewandcollectionview
//
//  Created by Jomms on 10/10/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    


    var cell = CollectionViewCell()
    var img = UIImage()    //var username = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cell.imageviw?.image = img
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectioncell")
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            
            return 0
        }
        
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return 0
        }
        
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
            
            
            
            return cell
        }
    }
    
}
