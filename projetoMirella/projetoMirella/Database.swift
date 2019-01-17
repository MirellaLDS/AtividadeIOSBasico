import Foundation

class Database {

    static let shared = Database()
    var storage:Array<String> = []
    var tela = 0
    
    var usuarios: [Usuario] = []
    
    private init(){}
    
    func insert(add value: Usuario) {
        self.usuarios.append(value)
    }
    
    func delete(add value: Int) {
        self.usuarios.remove(at: value)
    }
    
    func list() -> Array<Usuario>{
        return self.usuarios
    }
    
    func setControl(value: Int) {
        self.tela = value
    }
    
    func getControl() -> Int {
        return self.tela
    }
    
    static func instance() -> Database {
        return self.shared
    }
}
