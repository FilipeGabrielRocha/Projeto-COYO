<template>
    <div>
        <h1>Gerenciar Unidades</h1>
        <DashboardUnidades />
    </div>
</template>

<script>
import DashboardUnidades from '@/components/DashboardUnidades.vue';

export default {
    name: "ListagemUnidade",
    components: {
        DashboardUnidades
    }
}
</script>

<style scoped>
h1 {
    text-align: center;
    margin: 15px auto;
}
</style>