class Produto < ApplicationRecord
    belongs_to :unidade #, optional: true

    # def sigla
    #     self.unidade.sigla
    # end

    def as_json(options={})
        super(
            except: [:created_at, :updated_at],
            include: {unidade: {only: [:id, :descricao, :sigla]}},
            # methods: :sigla
        )
    end
end
