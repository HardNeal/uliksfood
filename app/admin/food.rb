ActiveAdmin.register Food do

form do |f|
    f.inputs do
      f.input :name
      f.input :desc
      f.input :price
      f.input :category_id, as: :select, collection: Category.all
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :desc, :price, :image, :category_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
end
