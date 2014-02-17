require "minitest/mock/easily/version"

module MockEasily
  def self.included klass
    ::MiniTest::Mock.class_eval do
      def instance_eval *args, &block
        super *args, &block
      end
    end
  end

  def mock &block
    mock = ::MiniTest::Mock.new
    mock.instance_eval &block
    mock
  end
end
