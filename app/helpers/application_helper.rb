module ApplicationHelper
  def language_flag(language_name)
    flags = {
      "English" => "🇬🇧",
      "German" => "🇩🇪",
      "French" => "🇫🇷",
      "Spanish" => "🇪🇸",
      "Portuguese" => "🇵🇹",
      "Turkish" => "🇹🇷",
      "Italian" => "🇮🇹",
      "Greek" => "🇬🇷",
      "Klingon" => "🖖"
    }
    flags[language_name] || "🌍"
  end
end
