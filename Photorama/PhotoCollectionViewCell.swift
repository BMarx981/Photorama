//
//  PhotoCollectionViewCell.swift
//  Photorama
//
//  Created by Marx, Brian on 3/22/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    func update(with image: UIImage?)  {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
            
    }
}
