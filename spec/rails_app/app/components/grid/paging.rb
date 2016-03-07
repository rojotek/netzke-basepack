class Grid::Paging < Netzke::Grid::Base
  def configure(c)
    c.model = 'Book'
    c.paging = :pagination
    c.store_config = { page_size: 2 }
    c.columns = [:title]
    super
  end
end
