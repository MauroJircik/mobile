/*     IFSP - Campus Bragança Paulista

        Desenvolv. de Sistemas WEB

   Mauro Sérgio JAMRL Pereira BP3032116

       Participação 1 - Atividade 4
*/

console.log('  Atividade 4. Verifique quais dos valores abaixo são Truthy e Falsy. Faça-o utilizando a função Boolean(valor) e imprima o resutado:');


//entrada de valores:
const valores = [
    10,
    true,
    false,
    {},
    undefined,
    null,
    '',
    'abba',
    0,
];

//armazena resultado:
const resultados = valores.map(valor => ({
    valor: valor === '' ? "'' (string vazia)" : valor,
    booleano: Boolean(valor),
}));

//exibe resultados:
resultados.forEach(resultado => {
    console.log(`  - o valor ${resultado.valor} é considerado: ${resultado.booleano ? 'VERDADEIRO' : 'FALSO'}`);
});



