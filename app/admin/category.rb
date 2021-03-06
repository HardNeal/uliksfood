ActiveAdmin.register Category do

form do |f|
    f.inputs do
      f.input :name
      f.input :desc
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
end

	index do
		selectable_column
		id_column
		column :image do |place|
			image_tag place.image.url(:thumb)
		end

		column :name do |place|
			link_to place.name, admin_category_path(place)
		end

		column :desc
		actions
	end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :desc, :image


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
