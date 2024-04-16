class LojasController < ApplicationController

  def index
    @lojas = Loja.all
  end

  def show
    @loja = Loja.find(params[:id])
  end

  def new
    @loja = Loja.new
  end

  def create
    @loja = Loja.new(loja_params)
    @loja.save
    redirect_to loja_path(@loja)
  end

  def edit
    @loja = Loja.find(params[:id])
  end

  def update
    @loja = Loja.find(params[:id])
    @loja.update(loja_params)
    redirect_to loja_path(@loja)

  end

  def destroy
    @loja = Loja.find(params[:id])
    @loja.destroy
    redirect_to lojas_path
  end

private

def loja_params
  params.require(:loja).permit(:name, :address, :stars)

end



end
