<template>
    <nav id="navbar" class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">Página Inicial</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="/cadastro-produto">Cadastrar Produto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/cadastro-unidade">Cadastar Unidade</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/listagem-produtos">Listagem de Produtos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/listagem-unidades">Listagem de Unidades</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
    name: "NavbarUnidade"
}

</script>

<style scoped>
#navbar {
    background-color: #e3f2fd;
}
</style>