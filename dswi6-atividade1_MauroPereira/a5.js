/*     IFSP - Campus Bragança Paulista

        Desenvolv. de Sistemas WEB

   Mauro Sérgio JAMRL Pereira BP3032116

       Participação 1 - Atividade 5
*/

console.log('  Atividade 5. Verifique as comparações a seguir com os operadores == e ===. Qual será a saída para cada um deles? Teste em um script para ver se acertou:');

//entrada de valores:
const comparacoes = [
    { expressao: "5 == '5'", resultado: 5 == "5"},
    { expressao: "5 === '5'", resultado: 5 === "5"},
    { expressao: "5 == 5", resultado: 5 == 5 },
    { expressao: "5 === 5", resultado: 5 === 5 },
];

//exibe resultados:
comparacoes.forEach(comp => {
    console.log(`  - a expressão ${comp.expressao} retorna: ${comp.resultado}`);
});


