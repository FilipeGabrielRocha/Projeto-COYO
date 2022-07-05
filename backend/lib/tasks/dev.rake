namespace :dev do
  desc "TODO"
  task setup: :environment do

    unidades = %w(ml kg g)

    unidades.each do |kind|
      Unidade.create!(
        sigla: kind,
        descricao: "Uma medida em #{kind}"
      )
    end

    10.times do |i|
      Produto.create!(
        nome: "Pedra",
        descricao: "Um Saco de pedra",
        valor: "100",
        unidade: Unidade.all.sample
      )
    end
  end

end
