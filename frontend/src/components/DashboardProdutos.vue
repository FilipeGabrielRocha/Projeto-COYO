<template>
    <div id="produtos-tabela">
        <div>
            <div id="produto-cabecalho">
                <div class="produto-id">ID:</div>
                <div>Nome</div>
                <div>Unidade</div>
                <div>Descrição</div>
                <div>Valor</div>
                <div>Ação</div>
            </div>
        </div>
        <div id="produtos-tabela-linhas">
            <div class="produtos-tabela-linha" v-for="produto in produtos" :key="produto.id">
                <div class="ordem-numero">{{ produto.id }}</div>
                <div>{{ produto.nome }}</div>
                <div>{{ produto.unidade.sigla }}</div>
                <div>{{ produto.descricao }}</div>
                <div>R${{ produto.valor }}</div>
                <div>
                    <button class="deletar-btn" @click="deletarProduto(produto.id)">Deletar</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import api from '../services/api.js';

export default {
    name: "DashboardProdutos",
    data() {
        return {
            produtos: null
        }
    },
    mounted() {
        api.get('/produtos').then(response => {
            this.produtos = response.data;

            console.log(response)
        })
    },
    methods: {
        async deletarProduto(id) {
            const req = await fetch(`http://localhost:3000/produtos/${id}`, {
                method: "DELETE",
                headers: { "Content-Type": "application/json" }
            });
            console.log(req)


            api.get('/produtos').then(response => {
                this.produtos = response.data;

                console.log(response)
            })
        }
    }
}
</script>

<style scoped>
#produtos-tabela {
    max-width: 1200px;
    margin: 0 auto;
}

#produto-cabecalho,
#produtos-tabela-linhas,
.produtos-tabela-linha {
    display: flex;
    flex-wrap: wrap;
}

#produto-cabecalho {
    font-weight: bold;
    padding: 12px;
    border-bottom: 3px solid rgb(4, 164, 245);
}

#produto-cabecalho div,
.produtos-tabela-linha div {
    width: 19%
}

.produtos-tabela-linha {
    width: 100%;
    padding: 12px;
    border-bottom: 1px solid rgb(143, 208, 255);
}

#produto-cabecalho .produto-id,
.produtos-tabela-linha .ordem-numero {
    width: 5%;
}

.deletar-btn {
    background-color: red;
    color: rgba(255, 255, 255, 0.908);
    font-weight: bold;
    border-radius: 25px;
    width: 115px;
    border: 2px solid red;
    padding: 10px;
    font-size: 16px;
    margin: 0 auto;
    cursor: pointer;
}

.deletar-btn:hover {
    background-color: transparent;
    color: red;
}
</style>