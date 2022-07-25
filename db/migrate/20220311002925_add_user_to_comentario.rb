class AddUserToComentario < ActiveRecord::Migration[6.1]
  def change
    add_reference :comentarios, :user, null: false, foreign_key: true
  end
end
