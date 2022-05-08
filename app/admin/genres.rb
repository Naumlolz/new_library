ActiveAdmin.register Genre do
  permit_params :name

  member_action :update, method: :patch do
    book.update(genre_id: nil)
    redirect_to resource_path, notice: "Deleted!"
  end

  action_item :import_demo, only: :show do
    link_to 'Import Demo', '#'
  end

  # show :title => proc {|genre| "#{genre.name}" } do
  #   panel "books" do
  #     index_table_for(genre.books, class: 'index_table') do
  #       id_column
  #       column :title
  #       column :action do |object|
  #         byebug
  #         link_to "Delete", admin_book_path(object), method: :delete
  #       end
  #     end
  #     # genre.books.each do |book|
  #     #   table_for book do
          
  #     #   end
  #     # end
  #   end
  #   active_admin_comments
  # end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Genre" do
      f.input :name
    end
    f.actions
  end
end
