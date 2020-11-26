ActiveAdmin.register Product do
  permit_params :name, :description, :retail_price, :sale_price, :quantity, :manufacturer_id, :category_id, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, size: "200x200") : ''
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
