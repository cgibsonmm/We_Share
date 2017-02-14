module ImageHelper
  def has_image?(item)
    unless item.image.blank?
      image_tag item.image.url(:thumb), class: 'ui circular image'
    else
      image_tag('placeholder.png', class: 'ui small circular image')
    end
  end

  def show_image(item)
    unless item.image.blank?
      image_tag item.image.url(:medium)
    else
      image_tag('placeholder.png', class: 'ui medium image')
    end
  end
end
