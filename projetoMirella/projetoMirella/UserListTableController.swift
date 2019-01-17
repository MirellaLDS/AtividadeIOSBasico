//
//  UserListTableController.swift
//  projetoMirella
//
//  Created by aluno on 14/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class UserListTableController: UITableViewController {
    
    var usuarios: [Usuario] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        usuarios = Database.instance().list()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        usuarios = Database.instance().list()
        print("count \(usuarios.count)")
        
        self.tableView.reloadData()
        
        
    }
    
//    func createUsuarios() -> [Usuario] {
//        var tempUsuarios: [Usuario] = []
//        
//        let usuario1 = Usuario(nome: "Mirella 1", login: "mirella", senha: "321456")
//        let usuario2 = Usuario(nome: "Mirella 2", login: "mirella", senha: "Senha")
//        tempUsuarios.append(usuario1)
//        tempUsuarios.append(usuario2)
//        
//        return tempUsuarios
//    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        print("Section \(section)")
        return usuarios.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellItem", for: indexPath) as! MyTableViewCell
        
        let nome = usuarios[indexPath.row].nome
        cell.labelTarefa?.text = nome
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if editingStyle == .delete {
                let alert = UIAlertController(title: "Aviso", message:"Deseja realmente apagar?", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
                alert.addAction(UIAlertAction(title: "Apagar", style: .destructive, handler: { (alert) in
                    Database.instance().delete(add: indexPath.row)
//                    tableView.deleteRows([indexPath], withRowAnimation: .fade)
                    self.usuarios = Database.instance().list()
                    self.tableView.reloadData()
                }))
                
                self.present(alert, animated: true, completion: nil)
            }
        } 
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "add_id" {
            return true
        }
        return false
    }
    var indexRow = 0
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Item select: \(indexPath.row)")
        Database.instance().setControl(value: indexPath.row)
        self.performSegue(withIdentifier: "abrirdetalhe", sender: self)
        
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
