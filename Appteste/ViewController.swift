//
//  ViewController.swift
//  Appteste
//
//  Created by Felipe Yuiti on 17/01/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "felipe \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quantidade
    }
    
    var quantidade = 0
    
    func showAlertWithTextField(){
          let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
          let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
              if let txtField = alertController.textFields?.first, let text = txtField.text {
                  // operations
                return print("Text==>" + text)
              }
          }
          let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
          alertController.addTextField { (textField) in
              textField.placeholder = "Tag"
          }
          alertController.addAction(confirmAction)
          alertController.addAction(cancelAction)
          self.present(alertController, animated: true, completion: nil)
      }

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func press(_ sender: Any) {
        quantidade += 1
        showAlertWithTextField()
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //o super referencia a classe pai e herda tudo dessa classe.
        tableView.dataSource = self
    }
}
//criar uma nova tela
