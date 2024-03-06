//
//  Simpsons.swift
//  SimpsonBook
//
//  Created by Ahmed Emrah Calayır on 5.03.2024.
//

import Foundation
import UIKit

class Simpsons{
    var name : String = ""
    var job : String = ""
    var image = UIImage()
    
    init(name: String, job: String, image: UIImage) {
        self.name = name
        self.job = job
        self.image = image
    }
}
