module Aitch
  class Configuration
    # Set proxy.
    attr_accessor :proxy

    # Set request timeout.
    attr_accessor :timeout

    # Set default headers.
    attr_accessor :default_headers

    # Set follow redirect.
    attr_accessor :follow_redirect

    # Set redirection limit.
    attr_accessor :redirect_limit

    # Set the user agent.
    attr_accessor :user_agent

    # Set the logger.
    attr_accessor :logger

    # Set the JSON parser.
    attr_accessor :json_parser

    # Set the XML parser.
    attr_accessor :xml_parser

    def initialize
      @timeout = 10
      @redirect_limit = 5
      @follow_redirect = true
      @user_agent = "Aitch/#{Aitch::VERSION} (http://rubygems.org/gems/aitch)"
      @default_headers = {}
      @json_parser = JSON
      @xml_parser = XMLParser
    end
  end

  def self.configure(&block)
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
end
