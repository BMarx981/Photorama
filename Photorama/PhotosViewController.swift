//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Marx, Brian on 3/17/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchInterestingPhotos()
    }
}
