class AddBrandNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand, :string
    add_column :products, :brand_img, :image
    add_column :products, :article_number, :integer
  end
end
