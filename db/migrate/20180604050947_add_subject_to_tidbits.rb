class AddSubjectToTidbits < ActiveRecord::Migration[5.1]
  def change
    add_column :tidbits, :subject, :string
  end
end
