class Position
  POSITION = [
    "pitcher",
    "catcher",
    "first",
    "second",
    "third",
    "shortstop",
    "outfield"
  ]

  def self.age_group
    POSITION
  end

  def self.all
    age_group.map { |position| new(position) }
  end

  def initialize(position)
    @position = position
  end

  # simple_form automatically uses `id` for the option value.
  def id
    @position
  end

  # simple_form automatically uses this for the option text.
  def name
    I18n.t(@position, scope: :"models.position")
  end
end
