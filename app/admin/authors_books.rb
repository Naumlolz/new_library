ActiveAdmin.register AuthorsBook do
  permit_params :author_id, :book_id

  author_names = Author.all.pluck(
    :first_name, :last_name, :id
  ).map{|full_name| ["#{full_name[0]} #{full_name[1]}", full_name[2]]}
  
  #a = AuthorsBook.all
  
  # a.each do |author_book|
  #   author_book.author do
  #     index do
  #       column :id
  #       column :first_name
  #       column :last_name
  #       column :book
  #       actions
  #     end
  #   end
  # end

  filter :author, as: :check_boxes, collection: proc { author_names }

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Author`s books" do
      f.input :author_id, as: :select, collection: author_names,
              include_blank: false, include_hidden: false
      f.input :book_id, as: :select, collection: Book.all.pluck(:title, :id)
    end
    f.actions
  end
end