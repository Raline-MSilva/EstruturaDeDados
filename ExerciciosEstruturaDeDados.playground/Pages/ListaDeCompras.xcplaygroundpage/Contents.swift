import UIKit

//Exercicio1-listaDeCompras

//O desafio para o dia é implementar uma versão simplificada de uma lista de compras usando arrays. A lista deve permitir adicionar novos itens, remover itens e listar todos os itens.

//Ao adicionar um novo item, o usuário deve inserir o nome do produto e a quantidade desejada. Ao remover um item, o usuário deve especificar o nome do produto. Por fim, ao listar todos os itens, a lista deve exibir o nome do produto e a quantidade em um formato legível.

class listaDeCompras {
    // propriedade usando tuplas
    var itens: [(nome: String, quantidade: Int)] = []
    
    func adicionarItem(nome: String, quantidade: Int) {
        let item = (nome: nome, quantidade: quantidade)
        itens.append(item)
    }
    
    func removerItem(nome: String) {
        itens.removeAll { $0.nome == nome}
    }
    
    func exibirItens() {
        for indice in 0..<itens.count {
            let item = itens[indice]
            print("\(indice). Item: \(item.nome), Quantidade: \(item.quantidade)")
        }
    }
}

let lista = listaDeCompras()

lista.adicionarItem(nome: "Arroz", quantidade: 2)
lista.adicionarItem(nome: "Uva", quantidade: 5)
lista.adicionarItem(nome: "Maça", quantidade: 3)

print("##### LISTA DE COMPRAS ######")
lista.exibirItens()

lista.removerItem(nome: "Uva")

print("***** Depois de remover item *****")

lista.exibirItens()
print("----- Adicionando novos itens ----")
lista.adicionarItem(nome: "Banana", quantidade: 1)
lista.adicionarItem(nome: "Laranja", quantidade: 6)
lista.exibirItens()

lista.removerItem(nome: "Arroz")
print("***** Depois de remover item *****")
lista.exibirItens()
