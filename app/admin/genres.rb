ActiveAdmin.register Genre do
  permit_params :name

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Genre" do
      f.input :name
    end
    f.actions
  end
end
