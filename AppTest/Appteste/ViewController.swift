//
//  ViewController.swift
//  Appteste
//
//  Created by Felipe Yuiti on 17/01/22.
//

import UIKit

struct tupla {
    var valor : String?
    var valor1 : String?
    
//    init (valor: String, valor1: String){
//        self.valor = valor
//        self.valor1 = valor1
//    }
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array : [String] = []
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let arrays = array[indexPath.row]
        cell.textLabel?.text = arrays
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func showAlertWithTextField(){
          let alertController = UIAlertController(title: "Add new tag",
                                                  message: nil,
                                                  preferredStyle: .alert)
        
          let confirmAction = UIAlertAction(title: "Add",style: .default){ _ in
              if let txtField = alertController.textFields?.first, let text = txtField.text {
                // operations
                  self.array += [text]

                  self.tableView.reloadData()
                  return print("Text==>" + text)
              }
          }
        
          let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in }
          alertController.addTextField { textField in textField.placeholder = "Titulo"}
          alertController.addTextField { textField in textField.placeholder = "Descrição"}
        
          alertController.addAction(confirmAction)
          alertController.addAction(cancelAction)
          self.present(alertController, animated: true, completion: nil)
      }

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func press(_ sender: Any) {
        showAlertWithTextField()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //o super referencia a classe pai e herda tudo dessa classe.
        tableView.dataSource = self
    }
}
//criar uma nova tela
