class LojasController < ApplicationController

  def index
    @lojas = Loja.all
  end
end
