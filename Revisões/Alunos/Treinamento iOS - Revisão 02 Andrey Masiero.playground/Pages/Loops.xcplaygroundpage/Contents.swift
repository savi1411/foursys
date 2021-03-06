/*:
## Loops
 Na primeira revisão do curso desenvolvemos um exercício para entender como é importante manter um bom controle de constantes e variáveis para evitarmos erros inesperados.
 
 Porém ao revisitar o código do exercício resolvido (abaixo), vemos que ainda há muitas oportunidade de melhoria, como itens repetidos e lógica redundante.
 
 Portanto iremos trabalhar agora numa refatoração deste código.
 
 */
//:  - callout(Exercício): Reescreva o código a seguir para eliminar as repetições e redundâncias. Sugerimos como fator essencial a utilização de um loop do tipo for-in ou repeat-while. Ao efetuar testes da nova solução, certifique-se que os resultados sejam os mesmos da versão original.
import Foundation
// Código original
var questions = [
    "1. the process of converting a high-level language to machine language is known as compilations",
    "2. A source file contains code written in a programming language that is to be sent to the compiler",
    "3. Careful design of software can result in programs that will be efficient, error-free, and easy to maintain",
    "4. Writing code is the first step in the waterfall model of developing software",
    "5. Pseudo-code and flowcharts can be used to represent individual algorithms of a program",
    "6. Pseudo-code uses exact programming language syntax to represent a module in the larger program",
    "7. The C programming language is considered a structured programming language",
    "8. Select meaningful identifiers (names) for all the variables in the program",
    "9. the return statement cannot contain an expression",
    "10. Variables are named memory locations that have a type"
]
var answers = [
    "true",
    "true",
    "true",
    "false",
    "true",
    "false",
    "true",
    "true",
    "false",
    "true"
]





// Insira aqui o código refatorado

func questionsAnswers(question: String, response: String) -> String{
    var score = Int()
    var msg = String()
    let querry = questions.firstIndex(of: question)!
    if answers[querry] == response{
        score += 10
        msg = "Voce acertou e ganhou 10 pontos\nVoce Possuiu um totald de \(score)"
    }else{
        msg = "Voce errou!!\nVoce Possuiu um totald de \(score) pontos"
    }
    
    return msg
}
var result = questionsAnswers(question: "1. the process of converting a high-level language to machine language is known as compilations", response: "false")
print(result)
/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)


[Anterior](@previous)  |  página 6 of 6 |
 */

