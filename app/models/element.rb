# == Schema Information
#
# Table name: elements
#
#  id              :bigint           not null, primary key
#  atomic_number   :integer          not null
#  atomic_weight   :float            not null
#  boiling_point   :float
#  density         :float
#  description     :text             not null
#  group           :integer          not null
#  info_url        :text             not null
#  melting_point   :float
#  name            :string           not null
#  period          :integer          not null
#  series          :integer          not null
#  series_color    :string           not null
#  state           :integer          not null
#  symbol          :string           not null
#  year_discovered :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_elements_on_atomic_number  (atomic_number) UNIQUE
#  index_elements_on_name           (name) UNIQUE
#  index_elements_on_symbol         (symbol) UNIQUE
#
class Element < ApplicationRecord
  enum series: {
    alkali_metal: 0,
    alkaline_earth_metal: 1,
    lanthanoid: 2,
    actinoid: 3,
    transition_metal: 4,
    post_transition_metal: 5,
    metalloid: 6,
    nonmetal: 7,
    halogen: 8,
    noble_gas: 9
  }

  enum state: { solid: 0, liquid: 1, gas: 3 }
end
