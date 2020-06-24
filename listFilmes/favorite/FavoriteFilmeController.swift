
import Foundation
import UIKit


class FavoriteFilmeController: UIViewController {
    
    @IBOutlet weak var tblFavoriteView: UITableView!
    
    var data = false
    
    override func viewDidLoad() {
        
        tblFavoriteView.register(UINib.init(nibName:"FavoriteFilmeCell",bundle:nil),
                                 forCellReuseIdentifier: "FavoriteFilmeCell")
        tblFavoriteView.backgroundColor = .clear
        tblFavoriteView.reloadData()
        
        super.viewDidLoad()
    }
    
}

extension FavoriteFilmeController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data {
            return 10
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblFavoriteView.dequeueReusableCell(withIdentifier: "FavoriteFilmeCell", for: indexPath)
        
        return cell
    }
    
}
