require('rspec')
require('find_and_replace')

describe('Search#find_and_replace') do
  it('replaces a single word with another word') do
    searched = Search.new("world")
    expect(searched.find_and_replace("world", "universe")).to(eq("universe"))
  end

  it('replaces a single word in a string of text with another word') do
    searched = Search.new("the ending is world.")
    expect(searched.find_and_replace("world", "universe")).to(eq("the ending is universe."))
  end

end