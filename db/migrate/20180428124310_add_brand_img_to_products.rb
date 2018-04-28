class AddBrandImgToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand_image, :string
  end
end
