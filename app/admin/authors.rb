ActiveAdmin.register Author do
  permit_params :first_name, :last_name

  # index do
  #   selectable_column
  #   id_column
  #   column :email
  #   column :current_sign_in_at
  #   column :sign_in_count
  #   column :created_at
  #   actions
  # end

  filter :books
  filter :first_name


  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Author" do
      f.input :first_name
      f.input :last_name
    end
    f.actions
  end
end
