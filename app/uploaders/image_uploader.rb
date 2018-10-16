class ImageUploader < BaseUploader

  version :xl do
    process resize_to_limit: [1600, 1600]
  end

  version :lg, from_version: :xl do
    process resize_to_limit: [1200, 1200]
  end

  version :md, from_version: :lg do
    process resize_to_limit: [800, 800]
  end

  version :sm, from_version: :md do
    process resize_to_limit: [400, 400]
  end


  version :square_md do
    process resize_to_fill: [800, 800]
  end

end
