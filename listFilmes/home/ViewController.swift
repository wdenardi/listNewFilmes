//
//  ViewController.swift
//  listFilmes
//
//  Created by William Denardi on 16/06/20.
//  Copyright © 2020 William Denardi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UITableViewDelegate{


    @IBOutlet weak var viewFilmes: UITableView!
    @IBOutlet weak var viewGenero: UICollectionView!
    
    var filmes: [Filme] = []
      
      override func viewDidLoad() {
          super.viewDidLoad()
          
        var filme: Filme
        filme = Filme(titulo: "Arvore", desc: "Folha", pais: "Amazonia", genero: "Floresta", imagen: <#T##UIImage#>)
        filmes.append(filme)
        
        viewFilmes.dataSource = self
        viewFilmes.delegate = self
        
        
      }
  }

extension ViewController: UITableViewDataSource {
    
      func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return filmes.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let homeCell = "homeCell"
                  
            let filme: Filme = filmes[indexPath.row]
            let celula = tableView.dequeueReusableCell(withIdentifier: homeCell, for:indexPath) as! FilmeCelula
                celula.imagen.image = filme.imagen
                celula.tituloView.text = filme.titulo
                celula.generoView.text = filme.genero
                celula.paisView.text = filme.pais
                celula.descView.text = filme.desc
        
       
            return celula
       }
}


