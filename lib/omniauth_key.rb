class OmniauthKey 
  def self.instance
    @keys ||= HashWithIndifferentAccess.new(YAML.load(File.open(File.join(Rails.root, 'config/omniauth.yml'))))
  end
end
