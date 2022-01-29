json.extract! book, :id, :title, :created_at, :updated_at, :author, :price, :publisheddate
json.url book_url(book, format: :json)
