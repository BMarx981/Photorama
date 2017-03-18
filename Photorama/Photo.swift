//
//  Photo.swift
//  Photorama
//
//  Created by Marx, Brian on 3/18/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import Foundation

class Photo {
    
    var title: String
    var photoID: String
    var remoteURL: URL
    var dateTaken: Date
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    
}
