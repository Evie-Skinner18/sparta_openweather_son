require 'yaml'

class YamlExample

  def initialize
    @user_credentials = YAML.load_file('user_credentials.yml')
    @env = YAML.load_file('environments.yml')
    @nested = YAML.load_file('list.yml')
  end

  def print_user_credentials
    puts @user_credentials
  end

  def print_environments
    puts @env
  end

  def print_list
    puts @nested

  end


end #end of class


yaml = YamlExample.new
yaml.print_list
