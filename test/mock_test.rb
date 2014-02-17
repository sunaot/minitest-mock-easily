require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/mock/easily'

describe MockEasily do
  include MockEasily
  before do
    @mock = mock do
      expect :hello, 'hello, '
      expect :world, 'world'
    end
  end

  it 'mocks easily' do
    (@mock.hello + @mock.world).must_equal 'hello, world'
  end
end
