<template>
    <div>
        <h1>Gerenciar Produtos</h1>
        <DashboardProdutos />
    </div>
</template>

<script>
import DashboardProdutos from '@/components/DashboardProdutos.vue';

export default {
    name: "ListagemProduto",
    components: {
        DashboardProdutos
    }
}
</script>

<style scoped>
h1 {
    text-align: center;
    margin: 15px auto;
}
</style>