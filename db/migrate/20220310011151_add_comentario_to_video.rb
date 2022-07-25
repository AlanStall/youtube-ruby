class AddComentarioToVideo < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :comentario, :text
  end
end
