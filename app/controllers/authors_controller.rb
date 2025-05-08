class AuthorsController < ApplicationController
  def new
  end

def create
  @author = Author.new(params.require(:author).permit(:first_name, :last_name, :date_of_birth))
  @author.save
redirect_to "/authors/listAuthor"
end

  def listAuthor
    @authors=Author.all
  end

  def editAuthor
    @author = Author.find(params[:id])
    @books=Book.all
  end

  def update
    @author = Author.find(params[:id])

    if @author !=nil
      @author.update(params.require(:author).permit(:first_name, :last_name, :date_of_birth, book_ids: []))
      redirect_to "/authors/listAuthor"
    else
      redirect_to "/authors/editAuthor/#{params[:id]}"

    end
  end

  def delete
    @author=Author.find(params[:id])
    if @author!=nil
      @author.destroy
      redirect_to "/authors/listAuthor"
    end
  end

  def authors
    author = Author.find_by(id: params[:id])
    if author
      render json: author.to_json(include: :books)
    else
      render json: { error: "Author not found" }
    end
  end
end
