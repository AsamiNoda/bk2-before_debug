$("#comments_area").html("<%= j(render 'index', {  book: @book, book_comments: book_comments  }) %>")
$("textarea").val('')