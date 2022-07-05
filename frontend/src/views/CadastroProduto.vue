<template>
  <div>
    <h1>Cadastro do Produto</h1>
  </div>
  <div id="imagem" class="">
    <img alt="Cadastro logo" src="../../public/img/logo.png">
  </div>
  <ProdutoForm />
</template>

<script>
import ProdutoForm from '@/components/ProdutoForm.vue'

export default {
  components: {
    ProdutoForm
  }
}
</script>

<style scoped>
h1 {
  text-align: center;
  margin-top: 30px;
}

#imagem {
  text-align: center;
  margin: 30px
}
</style>
