//
//  controller.swift
//  listFilmes
//
//  Created by William Denardi on 19/06/20.
//  Copyright © 2020 William Denardi. All rights reserved.
//

import Foundation
import UIKit

class controller: UIViewController {
    
    @IBOutlet weak var teste: UITableView!
    @IBOutlet weak var stackView: UIStackView!
    
    var filmes: [Filme] = []
    
    
    override func viewDidLoad() {
        
        
        teste.register(UINib.init(nibName:"HomeFilmeCell",bundle:nil), forCellReuseIdentifier: "HomeFilmeCell")
        teste.backgroundColor = .clear
        teste.reloadData()
        
        let xib =   Bundle.main.loadNibNamed("HomeGeneroCell", owner: self, options: nil)?.first as! ViewGeneroCell

        xib.generoView.text = "teste"
        xib.generoView.text = "teste2"
        stackView.addArrangedSubview(xib)
        
    }
    
}

extension controller: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = teste.dequeueReusableCell(withIdentifier: "HomeFilmeCell", for: indexPath) as! HomeFilmeCell
        cell.selectionStyle = .none
        
        
        var filme: Filme
        filme = Filme(titulo: "Rambo XVI",
                      desc: "Olha o rambo novamente ---------------- tiro ---------arco flexa --------------------- bomba",
                      pais: "America Do Norte", genero: "Guerra",
                      imagemFilme: "2",
                      nota: "4")
        filmes.append(filme)
        
        cell.tituloFilme.text = filme.titulo
        cell.generoFilme.text = filme.genero
        cell.paisFilme.text = filme.pais
        cell.imagenFilme.image = filme.imagemFilme
        cell.descricaoView.text = filme.desc
        cell.notaFIlme.text = filme.nota
        
        return cell
    }
    
    
}
