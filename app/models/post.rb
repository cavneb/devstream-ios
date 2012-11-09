class Post
  PROPERTIES = [ :title, :html_url, :json_url, :slug, :date, :contributor ]
  PROPERTIES.each { |prop| attr_accessor prop }

  def initialize(hash = {})
    hash.each { |key, value|
      if PROPERTIES.member? key.to_sym
        self.send((key.to_s + "=").to_s, value)
      end
    }
  end

  def contributor=(contributor_hash)
    @contributor = Contributor.new(contributor_hash)
  end
end
