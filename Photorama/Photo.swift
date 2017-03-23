//
//  Photo.swift
//  Photorama
//
//  Created by Marx, Brian on 3/22/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import Foundation

class Photo {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    //This method was used to make the class conform to the Equatable protocol
//    static func == (lhs: Photo, rhs: Photo) -> Bool {
//        //Two Photos are the same if they have the same photoID
//        return lhs.photoID == rhs.photoID
//    }
}

extension Photo: Equatable {
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        //Two Photos are the same if they have the same photoID
        return lhs.photoID == rhs.photoID
    }
}
