module HomeHelper

  def get_count(language)
    Library.tagged_with(language).count
  end

end
