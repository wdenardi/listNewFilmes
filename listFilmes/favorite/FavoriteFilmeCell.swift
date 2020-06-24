//
//  FavoriteFilmeCell.swift
//  listFilmes
//
//  Created by William Denardi on 19/06/20.
//  Copyright © 2020 William Denardi. All rights reserved.
//

import UIKit

class FavoriteFilmeCell: UITableViewCell {
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var btLike: UIButton!
    @IBOutlet weak var tituloView: UILabel!
    @IBOutlet weak var generoView: UILabel!
    @IBOutlet weak var paisView: UILabel!
    @IBOutlet weak var descFilmeView: UITextView!
    @IBOutlet weak var notaFilmeView: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
