<template>
    <div id="mensagem">
        <MensagemProdutoUnidade :msg="msg" v-show="msg" />
    </div>
    <main>
        <form id="nome-form" @submit="createProduto">
            <div class="mb-3 row justify-content-start">
                <div class="col-4">
                    <label for="nome" class="form-label">Nome do Produto:</label>
                    <input type="text" class="form-control" id="nome" placeholder="Digite o nome do produto" name="nome"
                        v-model="nome">
                </div>
                <div class="col-4">
                    <label for="unidade_id" class="form-label">Unidade:</label>
                    <select class="form-select" name="unidade_id" id="unidade_id" v-model="unidade_id">
                        <option v-for="unidade in unidades" :key="unidade.id" :value="unidade.id">
                            {{ unidade.sigla }}</option>
                    </select>
                </div>
            </div>
            <div class="mb-3">
                <label for="valor" class="form-label">Valor do Produto:</label>
                <input type="text" class="form-control" id="valor" name="valor" v-model="valor"
                    placeholder="Digite o valor">
            </div>
            <div class="mb-3">
                <label for="descricao" class="form-label">Descrição do Produto:</label>
                <input type="text" class="form-control" id="descricao" name="descricao" v-model="descricao"
                    placeholder="Descreva o produto">
            </div>
            <div>
                <button type="submit" class="btn btn-info">Cadastrar</button>
            </div>
        </form>
    </main>
</template>

<script>
import api from '../services/api.js';
import MensagemProdutoUnidade from './MensagemProdutoUnidade.vue';

export default {
    name: "ProdutoForm",
    components: {
        MensagemProdutoUnidade
    },
    data() {
        return {
            unidades: null,
            nome: null,
            descricao: null,
            valor: null,
            unidade_id: null
        }
    },
    mounted() {
        api.get('/unidades').then(response => {
            console.log(response)
            this.unidades = response.data;
        })
    },
    methods: {
        async createProduto(e) {
            e.preventDefault();

            const data = {
                nome: this.nome,
                unidade_id: this.unidade_id,
                valor: this.valor,
                descricao: this.descricao
            }
            console.log("data");

            console.log(data);


            const dataJson = JSON.stringify(data);

            const req = await fetch("http://localhost:3000/produtos", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: dataJson
            });

            const res = await req.json();
            console.log(res)

            // msg no sistema
            // this.msg = `Cadastro do produto "${res.nome}" realizado com sucesso!`;

            // limpar msg
            // setTimeout(() => this.msg = "", 3000);

            // Limpando os campos do formulario
            this.nome = "";
            this.unidade_id = "";
            this.valor = "";
            this.descricao = "";
        }
    },
}

</script>

<style scoped>
main {
    margin: 50px;
    margin-left: 30rem;
    margin-right: 30rem;
}
#mensagem {
  text-align: center;
}
</style>