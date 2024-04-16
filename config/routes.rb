Rails.application.routes.draw do
  #list all lojas
  get 'lojas', to: 'lojas#index'

  #show form to create a new loja
  get 'lojas/new', to: 'lojas#new'

  #list one loja
  get 'lojas/:id', to: 'lojas#show', as: 'loja'

  #create a new loja
  post 'lojas', to: 'lojas#create'

  #show form to edit a loja
  get 'lojas/:id/edit', to: 'lojas#edit', as: 'edit_loja'

  #update a loja
  path 'lojas/:id', to: 'lojas#update'

#delete a loja
  delete 'lojas/:id', to: 'lojas#destroy'

end
