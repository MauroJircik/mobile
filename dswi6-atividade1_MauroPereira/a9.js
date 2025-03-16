/*     IFSP - Campus Bragança Paulista

        Desenvolv. de Sistemas WEB

   Mauro Sérgio JAMRL Pereira BP3032116

       Participação 1 - Atividade 9
*/

console.log('  Atividade 9. Utilize as funções das atividades 7 e 8 e cria uma nova função que as receba como parâmetro. A função deve mostrar o valor resultante:');

//função soma:
const add = (a, b) => a + b;

//função multiplica:
const multiply = (a, b) => a * b;

//função execute:
const executeFunction = (func, a, b) => func(a, b);

//exibe resultados:
console.log(`  - a soma de 2 + 3 é: ${executeFunction(add, 2, 3)}`);
console.log(`  - a multiplicação de 2 * 3 é: ${executeFunction(multiply, 2, 3)}`);

//exibe resultados (console):
console.log(executeFunction(add, 2, 3));
console.log(executeFunction(multiply, 2, 3));

