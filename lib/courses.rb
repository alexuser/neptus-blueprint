require 'open-uri'
require 'cgi'
require 'nokogiri'

class Courses
  
  class InvalidError < RuntimeError ; end
  class NetworkError < RuntimeError ; end
  class InvalidKeyError < RuntimeError ; end
  
  attr_accessor :app_id, :app_key, :uri, :response
  
  def initialize(app_id  = 'a86b3102', app_key = '7f6bf32dfa2bc141dad2d1ec55af5d02')
    @response = ''
    @app_key = app_key
    @app_id = app_id
    @uri = "https://apis-dev.berkeley.edu/cxf/asws/course?courseNumber=61&departmentCode=COMPSCI&_type=xml&app_id=a86b3102&app_key=7f6bf32dfa2bc141dad2d1ec55af5d02"
  end
  
  def make_uri_get_courses(course='o = ')
    self.uri = "https://apis-dev.berkeley.edu/cxf/asws/course?departmentCode=" + course + "&_type=xml&app_id=" + self.app_id + "&app_key=" + self.app_key
  end
  
  def get_courses
    if self.uri == '' or self.uri == nil
      make_uri_get_courses
    end
    begin
      xml = URI.parse(uri).read
    rescue Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError,
      Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError,
      Net::ProtocolError => e
      raise Course::NetworkError, e
    end
    self.response = Nokogiri::XML(xml).xpath('//CanonicalCourse')
    
  end
  
  
  # class Response
  #     attr_reader :type, :data
  #     
  #     def initialize(xml)
  #       @doc = Nokogiri::XML(xml)
  #       parse_response
  #     end
  #     
  #     private
  #     
  #     def parse_response
  #       @doc.xpath('//CanonicalCourse')
  #     end
  #   
  #   end
  
  
end

o = Courses.new()

    