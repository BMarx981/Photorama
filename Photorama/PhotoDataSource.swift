//
//  PhotoDataSource.swift
//  Photorama
//
//  Created by Marx, Brian on 3/21/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import UIKit

//This class will abstract out the collection view data source code
class PhotoDataSource: NSObject, UICollectionViewDataSource {
    var photos = [Photo]()
    
    //Returns how many cells to display
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    //Asks for the UICollectionViewCell to display for a given index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "PhotoCollectionViewCell"
        
        for _ in 0...20 {
            print("Something.........................................")
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! PhotoCollectionViewCell
        return cell
    }
    
    
}
