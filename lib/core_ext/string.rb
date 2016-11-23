class String
  def normalized_for_ios
    self.gsub('"', '\"').gsub('%s', '%@')
  end

  def normalized_for_android
    self.gsub('"', '\"').gsub("'", %q(\\\')).gsub('%@', '%s')
  end
end