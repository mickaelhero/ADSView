//
// Created by Mickael Belhassen on 2019-08-06.
// Copyright (c) 2019 Mickael Belhassen. All rights reserved.
//

import Foundation

public class ADItem {
    let image: URL
    let title: String
    let website: URL

    public init(image: URL, title: String, website: URL) {
        self.image = image
        self.title = title
        self.website = website
    }
    
}
