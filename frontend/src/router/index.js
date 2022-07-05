import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/cadastro-produto',
    name: 'CadastroProduto',
    component: () => import(/* webpackChunkName: "cadastro-produto" */ '../views/CadastroProduto.vue')
  },
  {
    path: '/cadastro-unidade',
    name: 'CadastroUnidade',
    component: () => import(/* webpackChunkName: "cadastro-unidade" */ '../views/CadastroUnidade.vue')
  },
  {
    path: '/listagem-produtos',
    name: 'ListagemProduto',
    component: () => import(/* webpackChunkName: "listagem-produtos" */ '../views/ListagemProduto.vue')
  },
  {
    path: '/listagem-unidades',
    name: 'ProdutosUnidade',
    component: () => import(/* webpackChunkName: "listagem-unidades" */ '../views/ListagemUnidade.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
