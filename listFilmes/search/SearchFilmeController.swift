
import UIKit

class SearchFilmeController: UIViewController {
    
    var filmes: [Filme] = []
    
    @IBOutlet weak var tblFilmes: UITableView!
    @IBOutlet weak var searchFilme: UISearchBar!
    
    var searchFilmes = [String]()
    var search = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tblFilmes.register(UINib.init(nibName:"searchFilmeCell",bundle:nil), forCellReuseIdentifier: "searchFilmeCell")
        tblFilmes.backgroundColor = .clear
        tblFilmes.reloadData()
        
    }
    
}

extension SearchFilmeController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblFilmes.dequeueReusableCell(withIdentifier: "searchFilmeCell", for: indexPath) as! SearchFilmeCell
        cell.selectionStyle = .none
        
       
        
        return cell
    }
    
}



