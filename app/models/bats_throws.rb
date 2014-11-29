class BatsThrows
  BATSTHROWS = [
    "right",
    "left",
    "switch"
  ]

  def self.bats_throws
    BATSTHROWS
  end

  def self.all
    bats_throws.map { |bats_throws| new(bats_throws) }
  end

  def initialize(bats_throws)
    @bats_throws = bats_throws
  end

  # simple_form automatically uses `id` for the option value.
  def id
    @bats_throws
  end

  # simple_form automatically uses this for the option text.
  def name
    I18n.t(@bats_throws, scope: :"models.bats_throws")
  end
end
