require 'user_agent/browsers/all'
require 'user_agent/browsers/other'
require 'user_agent/browsers/opera'
require 'user_agent/browsers/internet_explorer'
require 'user_agent/browsers/webkit'
require 'user_agent/browsers/gecko'

class UserAgent
  module Browsers

    SECURITY = {
      "N" => :none,
      "U" => :strong,
      "I" => :weak
    }

    def self.all
      # Opera must be checked before Firefox due to the odd user agents used in some older versions of Opera
      [Other, Opera, InternetExplorer, Webkit, Gecko]
    end

    def self.extend(array)
      array.extend(All)
      all.each do |extension|
        return array.extend(extension) if extension.extend?(array)
      end
    end

  end
end
