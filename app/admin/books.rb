ActiveAdmin.register Book do
  permit_params :title, :author_id, :genre_id
  
  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Book" do
      f.input :title
      f.input :author_id, as: :select, collection: Author.all.pluck(:first_name, :last_name, :id)
      f.input :genre_id, as: :select, collection: Genre.all.pluck(:name, :id)
    end
    f.actions
  end
end

[[0,1,2,],[3,4,5],[6,7,8]].map{ |e| ["#{e[0]} #{e[1]}", e[2]]}