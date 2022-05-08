ActiveAdmin.register GenresBook do
  permit_params :book_id, :genre_id

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Genre`s books" do
      f.input :genre_id, as: :select, collection: Genre.all(:name, :id)
      f.input :book_id, as: :select, collection: Book.all.pluck(:title, :id)
    end
    f.actions
  end
end
