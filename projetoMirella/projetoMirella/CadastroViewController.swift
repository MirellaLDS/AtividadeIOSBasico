//
//  CadastroViewController.swift
//  projetoMirella
//
//  Created by aluno on 15/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {
    
    
    @IBOutlet weak var nomeField: UITextField!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var senhaField: UITextField!
    
    @IBAction func cadastrar(_ sender: UIButton) {
        let userName: String = self.nomeField.text ?? ""
        let userLogin = self.loginField.text ?? ""
        let userPw = self.senhaField.text ?? ""
        
        let usuario: Usuario = Usuario(nome: userName, login: userLogin, senha: userPw)
        
        Database.instance().insert(add: usuario)
        
        self.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        
//        if identifier == "save_id" {
//            
//           return true
//        }
//        return false
//    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }

}
