class String
  def normalized_for_ios
    self.gsub('"', '\"').gsub('%s', '%@')
  end

  def normalized_for_android
    str = self.gsub('"', '\"').gsub("'", %q(\\\')).gsub('&', '&amp;')

    idx = 0
    str = str.gsub(/(%@|%d|%s)/) do |sstr|

      idx += 1
      case sstr
      when "%@"
        "%#{idx}$s"
      when "%s"
        "%#{idx}$s"
      when "%d"
        "%#{idx}$d"
      else
        sstr
      end
    end
    str
  end
end