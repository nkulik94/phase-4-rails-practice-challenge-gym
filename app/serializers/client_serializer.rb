class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_membership_charges

  has_many :gyms

  def total_membership_charges
    self.object.memberships.reduce(0) { |sum, elem| sum + elem[:charge] }
  end
end
