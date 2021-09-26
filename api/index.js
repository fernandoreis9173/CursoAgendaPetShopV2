const express = require('express')
const app = express()
const bodyParder = require('body-parser')
const config = require('config')
const roteador = require('./rotas/fornecedores')
const NaoEncontrado = require('./erros/NaoEcontrato')
const CampoInvalido = require('./erros/CampoInvalido')
const DadosNaoFornecidos = require('./erros/DadosNaoFornecidos')
const ValorNaoSuportado = require('./erros/ValorNaoSuportado')
const formatosAceitos = require('./Serializador').formatosAceitos

app.use(bodyParder.json())

app.use((requisicao, resposta, proximo) => {
    let formatoRequisitado = requisicao.header('Accept')

    if (formatosAceitos.indexOf(formatoRequisitado) === -1) {
        resposta.status(406)
        resposta.end()
    }

    resposta.setHeader('Content-Type', formatoRequisitado)
})

app.use('/api/fornecedores',roteador)

app.use((erro, requisicao, resposta, proximo) => {
    let status = 500
    if(erro instanceof NaoEncontrado){
        status = 404
    }

    if(erro instanceof CampoInvalido || erro instanceof DadosNaoFornecidos) {
         status = 400
    }

    if(erro instanceof ValorNaoSuportado) {
        status = 406
    }

    resposta.status(status)
    resposta.send(
        JSON.stringify({
            mensagem: erro.message,
            id:erro.idErro
        })
    )
    })

app.listen(config.get('api.porta'), () => console.log('A API esta rodando NA PORTA 3000'))