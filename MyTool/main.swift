// Definir os enums
enum ErroAutenticacao: Error {
    case nomeUsuario(usuario: String)
    case senhaUsuario(senha: String)
}

func autenticarUsuario(nome: String, senha: String) throws -> String {
    if nome != "admin" {
        throw ErroAutenticacao.nomeUsuario(usuario: nome)
    }
    
    if senha != "123" {
        throw ErroAutenticacao.senhaUsuario(senha: senha)
    }
    
    return "ABCDYTy01"
}

// Realizar a autenticacao
do {
    let retornoAutenticacao = try autenticarUsuario(nome: "admin", senha: "123")
    print("Token: \(retornoAutenticacao)")
} catch ErroAutenticacao.nomeUsuario(_) {
    print("Nome de usuário inválido")
} catch ErroAutenticacao.senhaUsuario(_) {
    print("Senha inválida")
} catch {
    print("Falha")
}


// OPtional binding(ligacao opcional) / ? - Aceita valores nil (null)
//if let retornoAutenticacao = try? autenticarUsuario(nome: "admin", senha: "123") {
//    print(retornoAutenticacao)
//} else {
//    print("Usuario/senha incorretos")
//}
