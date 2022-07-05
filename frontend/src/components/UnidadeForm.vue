<template>
    <main>
        <form id="nome-form" @submit="createUnidade">
            <div class="mb-3 row justify-content-start">
                <div class="mb-3 col-4">
                    <label for="sigla" class="form-label">Unidade:</label>
                    <input type="text" class="form-control" id="sigla" name="sigla" v-model="sigla"
                        placeholder="Digite a unidade">
                </div>
                <div class="mb-3">
                    <label for="descricao" class="form-label">Descrição da Unidade:</label>
                    <input type="text" class="form-control" id="descricao" name="descricao" v-model="descricao"
                        placeholder="Descreva a unidade">
                </div>
                <div>
                    <button type="submit" class="btn btn-info">Cadastrar</button>
                </div>
            </div>
        </form>
    </main>
</template>

<script>

export default {
    name: "UnidadeForm",
    data() {
        return {
            sigla: null,
            descricao: null
        }
    },
    methods: {
        async createUnidade(e) {
            e.preventDefault();

            const data = {
                sigla: this.sigla,
                descricao: this.descricao
            }

            const dataJson = JSON.stringify(data);

            const req = await fetch("http://localhost:3000/unidades", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: dataJson
            });

            const res = await req.json();
            console.log(res);

            // Limpando os campos do formulario
            this.sigla = "";
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
</style>