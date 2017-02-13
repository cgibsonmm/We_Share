module ImageHelper
  def has_image?(item)
    if item.image_content_type
      image_tag item.image.url(:thumb), class: 'ui circular image'
    else
      image_tag('placeholder.png', class: 'ui small circular image')
    end
  end

  def show_image(item)
    if item.image_content_type
      image_tag item.image.url(:medium)
    else
      image_tag('placeholder.png', class: 'ui medium image')
    end
  end
end
