class Present
  def wrap(contents)
    fail "A contents has already been wrapped." unless @contents.nil?
    # i.e. fail it unless @contents is nil, so if @contents is nil, don't fail it
    # "".nil? => false
    @contents = contents
  end

  def unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
  end
end