module ApplicationHelper
  LANGUAGE_CODES = {
    'english' => 'us',
    'german' => 'de',
    'french' => 'fr',
    'italian' => 'it',
    'spanish' => 'es',
    'dutch' => 'nl',
    'turkish' => 'tr',
    'portuguese' => 'pt',
    'russian' => 'ru',
    'japanese' => 'jp',
    'korean' => 'kr',
    'chinese' => 'cn',
    'arabic' => 'sa',
    'polish' => 'pl',
    'swedish' => 'se',
    'norwegian' => 'no',
    'danish' => 'dk',
    'finnish' => 'fi',
    'greek' => 'gr',
    'czech' => 'cz',
    'hungarian' => 'hu',
    'hindi' => 'in',
    'mandarin' => 'cn',
  }.freeze

  def language_flag(language_name)
    code = LANGUAGE_CODES[language_name.downcase]
    if code.present?
      image_tag("flags/#{code}.svg", alt: "#{language_name} flag", class: "flag-icon")
    else
      language_name
    end
  end

  def render_stars(rating)
    return "Unrated" if rating == "unrated"

    full_stars = rating.floor
    half_star = (rating - full_stars) >= 0.5
    empty_stars = 5 - full_stars - (half_star ? 1 : 0)

    content_tag(:span, class: "star-rating") do
      (('<i class="fa fa-star text-warning"></i>' * full_stars) +
       (half_star ? '<i class="fa fa-star-half-alt text-warning"></i>' : '') +
       ('<i class="fa fa-star text-muted"></i>' * empty_stars)).html_safe
    end
  end
end
