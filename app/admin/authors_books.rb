ActiveAdmin.register AuthorsBook do
  permit_params :author_id, :book_id

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Author`s books" do
      f.input :author_id, as: :select, collection: Author.all.pluck(:first_name, :id)
      f.input :book_id, as: :select, collection: Book.all.pluck(:title, :id)
    end
    f.actions
  end
end
