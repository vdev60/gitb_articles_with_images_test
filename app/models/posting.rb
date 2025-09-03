class Posting < ApplicationRecord

  belongs_to :author,    class_name: 'User', foreign_key: 'user_id'
  belongs_to :editor,    class_name: 'User', foreign_key: 'editor_id'
  
  # the method returns image hash but the name of this method says that we want to see article_with_image
  # that is a bit confusion
  def article_with_image
    return type if type != 'Article'

    figure_start = body.index('<figure')
    figure_end = body.index('</figure>')
    return "#{figure_start}_#{figure_end}" if figure_start.nil? || figure_end.nil?

    image_tags = body[figure_start...figure_end + 9]
    # what if the body contain the text with a <img . I think we should check closed as well />
    # We can use a match? instead of inlucde?. 
    return 'not include <img' unless image_tags.include?('<img')

    posting_image_params(image_tags)
  end

  private

  def posting_image_params(html)
    tag_parse = -> (image, att) { image.match(/#{att}="(.+?)"/) }
    tag_attributes = {}

    %w[alt src data-image].each do |attribute|
      data = tag_parse.(html, attribute)
      # we can use if without nil? checking
      unless data.nil?
        tag_attributes[attribute] = data[1] unless data.size < 2
      end
      
      # we can use this shorter code
      # we can use if instead of unless 
    
      #if(data = tag_parse.(html, attribute))
      #  tag_attributes[attribute] = data[1] if data.size >= 2
      #end

    end
    # tag_parse
    tag_attributes
  end
end
