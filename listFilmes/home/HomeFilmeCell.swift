//
//  HomeViewCell.swift
//  listFilmes
//
//  Created by William Denardi on 19/06/20.
//  Copyright © 2020 William Denardi. All rights reserved.
//

import UIKit

class HomeFilmeCell: UITableViewCell {

    
    @IBOutlet weak var imagenFilme: UIImageView!
    @IBOutlet weak var descricaoView: UITextView!
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var generoFilme: UILabel!
    @IBOutlet weak var paisFilme: UILabel!
    @IBOutlet weak var notaFIlme: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
    }
    
}
