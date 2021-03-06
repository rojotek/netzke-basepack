class BookGridFiltering < Netzke::Grid::Base
  def configure(c)
    super
    c.model = Book
    c.default_filters = [{column: :last_read_at, value: {after: Date.parse("2011-01-01")}}]
  end

  def columns
    [ :title, :author__first_name, :exemplars, :notes, :last_read_at, :digitized ]
  end
end
