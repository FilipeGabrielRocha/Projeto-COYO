class AddUnidadeToProduto < ActiveRecord::Migration[7.0]
  def change
    add_reference :produtos, :unidade, foreign_key: true
  end
end
