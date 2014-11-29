class AgeGroup
  AGE_GROUP = [
    "eighteen",
    "thirty",
    "forty"
  ]

  def self.age_group
    AGE_GROUP
  end

  def self.all
    age_group.map { |age_group| new(age_group) }
  end

  def initialize(age_group)
    @age_group = age_group
  end

  # simple_form automatically uses `id` for the option value.
  def id
    @age_group
  end

  # simple_form automatically uses this for the option text.
  def name
    I18n.t(@age_group, scope: :"models.age_group")
  end
end
