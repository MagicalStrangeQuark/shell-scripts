/**
 * EM JAVASCRIPT, PODEMOS UTILIZAR AS DUAS FORMAS PARA DECLARAR UMA VARIÁVEL, UTILIZANDO
 * VAR OU LET, HAVENDO DIFERENÇAS DE ESCOPO ENTRE ELAS.
 */
{
    var a = 10;
    let b = 20;

    console.log(a, b);
}

/**
 * QUANDO UTILIZAMOS A DECLARAÇÃO VAR, PODEMOS REDECLARAR A VARIÁVEL EM QUESTÃO,
 * O MESMO NÃO OCORRENDO COM LET.
 * SE COMPILADO EM UM MESMO ESCOPO, O CÓDIGO ABAIXO INDICARÁ UM ERRO AO REDECLARARMOS USANDO LET.
 */
{
    var a = 15;
    let b = 30;

    console.log(a, b);
}

/**
 * UTILIZAÇÃO DE CONSTANTES EM JAVASCRIPT.
 * NÃO PODEMOS ALTERAR O VALOR, NO DECORRER DA APLICAÇÃO.
 */
{
    const c = 10;

    console.log(c);

    c = 20;
}