/*     IFSP - Campus Bragança Paulista

        Desenvolv. de Sistemas WEB

   Mauro Sérgio JAMRL Pereira BP3032116

       Participação 1 - Atividade 3
*/

console.log('  Atividade 3. Verifique o uso de var, let e const e veja as saídas do código em um script. Explique o porque do resultado apresentado:');

//entrada de valores:
var a = 1;
let b = 2;
const c = 3;

//armazena resultados:
let resultados = [];

//novos valores:
a = 10;
resultados.push(`  - o valor de 'a' (var) foi atualizado para: ${a}.`);

b = 20; 
resultados.push(`  - o valor de 'b' (let) foi atualizado para: ${b}.`);

//se erro:
try {
    c = 30;
    resultados.push(`  - o valor de 'c' (const) foi atualizado para: ${c}.`);
} catch (error) {
    resultados.push(`  - Erro ao reatribuir 'c' (const): ${error.message}.`);
}

//exibe resultados:
resultados.forEach((resultado) => {
    console.log(resultado);
});


