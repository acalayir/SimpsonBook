//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Ahmed Emrah Calayır on 5.03.2024.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedSimpson?.image
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
    }
    


}
