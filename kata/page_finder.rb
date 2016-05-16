
class PaginationHelper

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page

  end

  def item_count
    @collection.length

  end

  def page_count
    if item_count % @items_per_page > 0
      item_count / @items_per_page + 1
    else
      item_count / @items_per_page
    end
  end

  def page_item_count(page_index)
    pages_indexed = page_count - 1
    if !page_index.between?(1,pages_indexed)
      return -1
      elsif page_index == pages_indexed
       item_count % @items_per_page
      else
        return @items_per_page
       end
    end

  end