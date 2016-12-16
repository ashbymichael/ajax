class Image
  def self.random
    "img/#{(1..8).to_a.sample.to_s}.jpg"
  end
end
