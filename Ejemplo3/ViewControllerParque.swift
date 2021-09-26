//
//  ViewControllerParque.swift
//  Ejemplo3
//
//  Created by Kevin Jimenez on 24/9/21.
//
import UIKit
class ViewControllerParque: UIViewController , UITableViewDelegate, UITableViewDataSource{

    

    

    @IBOutlet weak var tableView: UITableView!
    
    let identifier = "sitioCell"
    
    let sm = SitioModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
        
        
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? TableViewCell
            cell?.descripcion.text = sm.sitios![indexPath.row].nombre
            loadImage(imageV: (cell?.imagen)!, url: sm.sitios![indexPath.row].foto!)
        return cell!
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sm.sitios!.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(sm.sitios![indexPath.row].categoria == "Parque"){
            return 150
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mostrarDetalle", sender: sm.sitios![indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "mostrarDetalle" {
            
            let vc = segue.destination as? DetailViewController
            
            vc?.sitio = sender as? Sitio
            
        }
    }
    
    func loadImage(imageV:UIImageView, url:String){
        
        
        guard let imageURL = URL(string: url) else { return }

        
        DispatchQueue.global().async {
                guard let imageData = try? Data(contentsOf: imageURL) else { return }

                let image = UIImage(data: imageData)
                DispatchQueue.main.async {
                    imageV.image = image
                }
            }
    }
    
}
