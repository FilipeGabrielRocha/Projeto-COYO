<template>
    <div id="produtos-tabela">
        <div>
            <div id="produto-cabecalho">
                <div class="produto-id">ID:</div>
                <div>Sigla</div>
                <div>Descrição</div>
                <div class="ação mr-3">Ação</div>
            </div>
        </div>
        <div id="produtos-tabela-linhas">
            <div class="produtos-tabela-linha" v-for="unidade in unidades" :key="unidade.id">
                <div class="ordem-numero">{{ unidade.id }}</div>
                <div class="sigla">{{ unidade.sigla }}</div>
                <div class="descricao">{{ unidade.descricao }}</div>
                <div>
                    <button class="deletar-btn" @click="deletarProduto(unidade.id)">Deletar</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import api from '../services/api.js';

export default {
    name: "DashboardUnidades",
    data() {
        return {
            unidades: null,
            unidades_id: null
        }
    },
    mounted() {
        api.get('/unidades').then(response => {
            this.unidades = response.data;

            console.log(response)
        })
    },
    methods: {
        async deletarProduto(id) {
            const req = await fetch(`http://localhost:3000/unidades/${id}`, {
                method: "DELETE",
                headers: { "Content-Type": "application/json" }
            });
            console.log(req)


            api.get('/unidades').then(response => {
                this.unidades = response.data;

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
#produto-cabecalho .produto-id,
.produtos-tabela-linha .descricao {
    width: 30%;
    text-align: justify;
}
#produto-cabecalho .produto-id,
.produtos-tabela-linha .sigla {
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
    margin-left: 2rem;
}

.deletar-btn:hover {
    background-color: transparent;
    color: red;
}
</style>