//
//  PageModel.swift
//  Pinch
//
//  Created by Baris Ciftci on 26/09/2022.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName :  String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
