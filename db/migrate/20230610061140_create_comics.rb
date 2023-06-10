class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string       :title,                null: false
      t.string       :author,               null: false
      t.string       :illustrator
      t.integer      :genre_id,             null: false
      t.integer      :magazine_id,          null: false
      t.integer      :decade_id,            null: false
      t.string       :publisher
      t.string       :publication
      t.string       :impression
      t.references :user,                 null: false, foreign_key: true
      t.timestamps
    end
  end
end
