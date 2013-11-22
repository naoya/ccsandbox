class List < Array
  def first_index (&block)
    return 0 if block.nil?

    self.each_with_index do |item, index|
      if block.call(item)
        return index
      end
    end
    nil
  end
end
