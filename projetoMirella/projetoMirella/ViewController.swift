//
//  ViewController.swift
//  projetoMirella
//
//  Created by aluno on 14/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login_edt: UITextField!
    @IBOutlet weak var pw_edt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "entrar_btn" {
            let login = login_edt.text
            let pw = pw_edt.text
            return login == "mirella" && pw == "321456"
        } else {
            return false
        }
        
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
}

