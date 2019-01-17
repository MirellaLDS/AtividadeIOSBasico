//
//  DetalheViewController.swift
//  projetoMirella
//
//  Created by aluno on 16/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var nomeLv: UILabel!
    @IBOutlet weak var login: UILabel!
    @IBOutlet weak var senha: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let value = Database.instance().getControl()
        let user = Database.instance().list()[value]
        
        self.nomeLv.text = "Nome: \(user.nome)"
        self.login.text = "Login: \(user.login)"
        self.senha.text = "Senha: \(user.senha)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
