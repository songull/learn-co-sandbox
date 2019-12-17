
class Selection::CLI

def call
  welcome
  puts "  "
  options
  
end
def welcome=
  
  
  
  










def options
  input = "nil"
  puts "Please enter your input below this line"
  puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  puts "   "
  input = gets.strip.downcase
  case input
  when "show list of games"
    puts "-------------------------"
    puts "  "
    list_product
    puts "-------------------------"
    options
    puts "   "
    when "1"
      puts "Gaming Series"
      puts "-----------------------"
      list_series(input)
      options
      puts "-----------------------"
      when "2"
        puts "For rpg series"
        puts "---------------------"
        list_series(input)
        options
        puts "---------------------"
        when "3"
          puts "Mmo series"
          puts "-------------------"
          list_series(input)
          

def list_product
    Selection::Scraper.scarp
    Selection::Scraper.scrape_product
    Selection::Scraper.display_product
  end
  def list_series(input)
    Selection::Scraper.scarp
    Selection::Scraper.scrape_product
    Selection::Scraper.display_series(input)
  end 




  