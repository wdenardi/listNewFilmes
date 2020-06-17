//
//  Filme.swift
//  listFilmes
//
//  Created by William Denardi on 16/06/20.
//  Copyright © 2020 William Denardi. All rights reserved.
//
import UIKit

class Filme{
    
    var titulo: String!
    var desc: String!
    var pais: String!
    var genero: String!
    var imagen: UIImage!
    
    init(titulo: String,desc: String!,pais: String! ,genero: String!,imagen: UIImage) {
        self.titulo = titulo
        self.desc = desc
        self.pais = pais
        self.genero = genero
        self.imagen = imagen
    }
}
