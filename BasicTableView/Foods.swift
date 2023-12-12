//
//  Foods.swift
//  BasicTableView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//

import Foundation

class Foods {
    let foodName: String?
    let foodPhotoName: String?
    let foodPrice: Double?
    
    
    init(foodName: String?, foodPhotoName: String?, foodPrice: Double?) {
        self.foodName = foodName
        self.foodPhotoName = foodPhotoName
        self.foodPrice = foodPrice
    }
}
