<template>
  <div>
    <h1>Cadastro do Unidade</h1>
  </div>
  <main>
    <div id="imagem" class="">
      <img alt="Cadastro logo" src="../../public/img/logo.png" >
    </div>
    <div id="form">
      <UnidadeForm />
    </div>
  </main>
</template>

<script>
import UnidadeForm from '@/components/UnidadeForm.vue'

export default {
  components: {
    UnidadeForm
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