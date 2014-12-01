class LastPlayed
  LAST_PLAYED = [
    "one",
    "two",
    "three",
    "four",
    "five"
  ]

  def self.age_group
    LAST_PLAYED
  end

  def self.all
    last_played.map { |last_played| new(last_played) }
  end

  def initialize(last_played)
    @last_played = last_played
  end

  # simple_form automatically uses `id` for the option value.
  def id
    @last_played
  end

  # simple_form automatically uses this for the option text.
  def name
    I18n.t(@last_played, scope: :"models.last_played")
  end
end
