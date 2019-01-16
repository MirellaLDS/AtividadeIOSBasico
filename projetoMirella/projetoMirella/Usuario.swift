//
//  Usuario.swift
//  projetoMirella
//
//  Created by aluno on 14/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import Foundation

class Usuario {
    var nome: String
    var login: String
    var senha: String
    
    init(nome: String, login: String, senha: String) {
        self.nome = nome
        self.login = login
        self.senha = senha
    }
}

