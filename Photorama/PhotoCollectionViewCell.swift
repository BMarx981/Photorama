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
    
    //Called when a cell is loaded with an image
    func update(with image: UIImage?) {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
    
    //When the cell initially gets populated with an image
    //this method gets called
    override func awakeFromNib() {
        super.awakeFromNib()
        
        update(with: nil)
    }
    
    //This is called when the cell is reused
    override func prepareForReuse() {
        super.prepareForReuse()
        
        update(with: nil)
    }
}
