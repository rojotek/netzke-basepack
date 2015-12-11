class BookQueryBuilder < Netzke::Basepack::QueryBuilder
  def configure(c)
    super

    c.model = "Book"
    c.auto_scroll = true
    c.fields = [{name: 'title', type: :integer, field_label: 'Title'}]
  end
end
