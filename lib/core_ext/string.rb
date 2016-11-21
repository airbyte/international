class String
  def normalized_for_ios
    self.gsub('"', '\"').tr('%s', '%@')
  end

  def normalized_for_android
    self.gsub("'", %q(\\\')).tr('%@', '%s')
  end
end