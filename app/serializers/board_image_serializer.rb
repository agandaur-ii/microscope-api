class BoardImageSerializer
  include Rails.application.routes.url_helpers

  include FastJsonapi::ObjectSerializer
  attributes :title, :background_img, :parent, :icons, :id, :user_id

  def initialize(board: nil) 
    @board = board
  end

  def serialize_new_board()
    serialized_new_board = serialize_board(@board)
    serialized_new_board.to_json()
  end

  def image
    return unless object.image.attached?
    object.image.blob.attributes
        .slice('filename', 'byte_size')
        .merge(url: image_url)
        .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    url_for(object.image)
  end

  private def serialize_board(board)
    {
      board: {
        id: board.id,
        image_url: board.get_image_url(),
        title: board.title,
        user_id: board.user_id
      }
    }
  end
end
