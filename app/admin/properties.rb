ActiveAdmin.register Property do
  permit_params :title, :description, :area, :image, :utilityfrom
  
  form do |f|
      f.inputs "Properties" do
        f.input :title
        f.input :description
        f.input :image, :as => :file
        f.input :area
        f.input :utilityfrom, as: :select, collection:Property.utilityfroms.keys
      end
      f.actions
    end
    
    show do |item_image|
      attributes_table do
        row :title
        row :description
        row :image do
        if item_image.image.blank?
        else 
          image_tag(property.image.url)
        end
        end
        row :utilityfrom
      end
    end    
end

  
  
  
  

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :image, :area
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :image, :area]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
