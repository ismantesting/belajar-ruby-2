ActiveAdmin.register Course do

  permit_params :tittle, :description, :price, :status, :image

  form do |f|
    f.inputs do
      f.input :tittle
      f.input :description
      f.input :price
      f.input :status, as: :select, collection: ["Active", "Not Active"], include_blank: false
      f.input :image
    end
    f.actions
  end
end
