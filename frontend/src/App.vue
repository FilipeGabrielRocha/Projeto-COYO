<template>
  <div>
    <NavbarUnidade />
  </div>
  <router-view/>

</template>

<script>
import NavbarUnidade from '@/components/NavbarUnidade.vue'

export default {
  components: {
    NavbarUnidade
}
}

</script>

<style scoped>

</style>
