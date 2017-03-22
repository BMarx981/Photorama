//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Marx, Brian on 3/17/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    var store: PhotoStore!
    let photoDataSource = PhotoDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //declares what var the datasource for the collection view is
        collectionView.dataSource = photoDataSource
        
        store.fetchInterestingPhotos {
            (photosResult) -> Void in
            
            switch photosResult {
            case let .sucess(photos):
                print("Successfully found \(photos.count) photos.")
                //updates the photoDataSource object with the result fo the web service request
                self.photoDataSource.photos = photos
                
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
                self.photoDataSource.photos.removeAll()
            }
            
            //Reolad the collectionView
            self.collectionView.reloadSections(IndexSet(integer: 0))
        }
    }
    
    
}
