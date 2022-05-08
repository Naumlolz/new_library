ActiveAdmin.register Book do
  permit_params :title, :author_id, :genre_id
  
  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Book" do
      f.input :title
      # f.input :author_id, as: :select, collection: Author.all.pluck(
      #   :first_name, :last_name, :id
      # ).map{|full_name| ["#{full_name[0]} #{full_name[1]}", full_name[2]]},
      #   include_blank: false, include_hidden: false

      # f.input :genre_id, as: :select, collection: Genre.all.pluck(:name, :id),
      #   include_blank: false, include_hidden: false

      f.input :avatar, :as => :file
    end
    f.actions
  end
end