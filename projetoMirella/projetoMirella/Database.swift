import Foundation

class Database {

    static let shared = Database()
    var storage:Array<String> = []
    
    var usuarios: [Usuario] = []
    
    private init(){}
    
    func insert(add value: Usuario) {
        self.usuarios.append(value)
    }
    
    func delete(add value2: Int) {
//        if let index = self.storage.firstIndex(of: value) {
//            self.storage.remove(at: index)
//        }
        if self.usuarios.count <= value2 {
            self.usuarios.remove(at: value2)
        }
    }
    
    func list() -> Array<Usuario>{
        return self.usuarios
    }
    
    static func instance() -> Database {
        return self.shared
    }
}
