/*     IFSP - Campus Bragança Paulista

        Desenvolv. de Sistemas WEB

   Mauro Sérgio JAMRL Pereira BP3032116

       Participação 1 - Atividade 2
*/

console.log('  Atividade 2. Acesse as propriedades do objeto a seguir:');

//entrada de valores:
let person = {
    name: "John",
    age: 30,
    city: "New York"
};

//exibe resultado:
Object.entries(person).forEach(([key, value]) => {
    console.log(`${key}: ${value}`);
});

    