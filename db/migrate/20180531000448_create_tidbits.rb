class CreateTidbits < ActiveRecord::Migration[5.1]
  def change
    create_table :tidbits do |t|
      t.text :body

      t.timestamps
    end
  end
end
