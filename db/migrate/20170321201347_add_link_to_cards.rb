class AddLinkToCards < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :link, :string
  end
end
