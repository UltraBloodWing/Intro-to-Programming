#This program was created as a demonstration of nearly all of the ruby concepts learned throughout this semester.

require 'rubygems'
require 'gosu'
require 'date'

module ZOrder
  BACKGROUND, TOP = *0..1
end

class DemoWindow < Gosu::Window

	def initialize
		super(650, 460, false)
		self.caption = "Thank you for using the program !"
		@img = Gosu::Image.new("thank_you.jpg")
    end
	
	def needs_cursor?
		true
    end
	
  def draw 
		@img.draw(10,10, ZOrder::TOP)
		Gosu.draw_rect(0, 0, 650, 460, Gosu::Color::RED, ZOrder::BACKGROUND, mode=:default)
  end
  
  def update 
	
  end
  
end

#displays menu

def menu
	print "\nWelcome to HoneyCo."
	print "\n"
	print "\n[1]Manuka Honey"
	print "\n[2]Pollen"
	print "\n[3]Creamy Honey"
	print "\n[4]Cocoa Honey\n"
	print "\nChoose your product\n"
	print "\n[5]Calculate\n\n"
	choice = gets.chomp.to_i
	return choice
end

#funtion to get the quantity of the item purchased

def quantity
	print "\nHow many items?\n"
	quantity = gets.chomp.to_i
	return quantity
end

#displays manuka honey options

def manuka
	manutotal = 0
	while true
		print "\n[1]Manuka Honey 30+\tRM30"
		print "\n[2]Manuka Honey 100+\tRM40"
		print "\n[3]Manuka Honey 500+\tRM50"
		print "\n[4]Manuka Honey 900+\tRM60"
		print "\n\nChoose your product\n"
		print "\n[5]Exit\n\n"

		manuchoice = gets.chomp.to_i

		if (manuchoice == 1)
			quantity = quantity()
			add = 30 * quantity
			manutotal += add
		elsif (manuchoice == 2)
			quantity = quantity()
			add = 40 * quantity
			manutotal += add
		elsif (manuchoice == 3)
			quantity = quantity()
			add = 50 * quantity
			manutotal += add
		elsif (manuchoice == 4)
			quantity = quantity()
			add = 60 * quantity
			manutotal += add
		elsif (manuchoice == 5)
			break
		else
			print "\ninvalid input try again\n"
		end
	end
	return manutotal
end

#displays pollen options

def pollen
	poltotal = 0
	while true
		print "\n[1]Pollen\tRM30"
		print "\n\nChoose your product\n"
		print "\n[2]Exit\n\n"

		polchoice = gets.chomp.to_i
		if (polchoice == 1)
			quantity = quantity()
			add = 80 * quantity
			poltotal += add
		elsif (polchoice == 2)
			break
		else
			print "\ninvalid input try again\n"
		end
	end
	return poltotal
end

#displays creamy honey options

def creamy
	creamtotal = 0
	while true
		print "\n[1]Creamy Honey Classic\t\tRM40"
		print "\n[2]Creamy Honey Strawberry\tRM40"
		print "\n[3]Creamy Honey Chocolate\tRM40"
		print "\n[4]Creamy Honey Lemon & Mint\tRM40"
		print "\n[5]Creamy Honey Blueberry\tRM40"
		print "\n[6]Creamy Honey Apricot\t\tRM40"
		print "\n\nChoose your product\n"
		print "\n[7]Exit\n\n"

		creamchoice = gets.chomp.to_i
		if (creamchoice == 1)
			quantity = quantity()
			add = 40 * quantity
			creamtotal += add
		elsif (creamchoice == 2)
			quantity = quantity()
			add = 40 * quantity
			creamtotal += add
		elsif (creamchoice == 3)
			quantity = quantity()
			add = 40 * quantity
			creamtotal += add
		elsif (creamchoice == 4)
			quantity = quantity()
			add = 40 * quantity
			creamtotal += add
		elsif (creamchoice == 5)
			quantity = quantity()
			add = 40 * quantity
			creamtotal += add
		elsif (creamchoice == 6)
			quantity = quantity()
			add = 40 * quantity
			creamtotal += add
		elsif (creamchoice == 7)
			break
		else
			print "\ninvalid input try again\n"
		end
	end
	return creamtotal
end

#displays cocoa honey options

def cocoa
cocototal = 0
	while true
		print "\n[1]Cocoa Honey Classic\t\tRM45"
		print "\n[2]Cocoa Honey Coconut\t\tRM45"
		print "\n[3]Cocoa Honey Coffee\t\tRM45"
		print "\n[4]Cocoa Honey Ginger\t\tRM45"
		print "\n[5]Cocoa Honey Peppermint\tRM45"
		print "\n\nChoose your product\n"
		print "\n[6]Exit\n\n"

		cocochoice = gets.chomp.to_i
		if (cocochoice == 1)
			quantity = quantity()
			add = 45 * quantity
			cocototal += add
		elsif (cocochoice == 2)
			quantity = quantity()
			add = 45 * quantity
			cocototal += add
		elsif (cocochoice == 3)
			quantity = quantity()
			add = 45 * quantity
			cocototal += add
		elsif (cocochoice == 4)
			quantity = quantity()
			add = 45 * quantity
			cocototal += add
		elsif (cocochoice == 5)
			quantity = quantity()
			add = 45 * quantity
			cocototal += add
		elsif (cocochoice == 6)
			break
		else
			print "\ninvalid input try again\n"
		end
	end
	return cocototal
end

#calculates the total cost and saves the information in a text file, which is used as a receipt

def calculate(manutotal,poltotal,creamtotal,cocototal)
	f = File.open("receipt.txt",'a')
	f.puts "\nHoneyCo. Receipt\n\n"
	dt = Date.today()
	f.puts "Date: " + dt.to_s
	f.puts "\nManuka Honey: " + manutotal.to_s + " RM"
	f.puts "Pollen: " + poltotal.to_s + " RM"
	f.puts "Creamy Honey: " + creamtotal.to_s + " RM"
	f.puts "Cocoa Honey: " + cocototal.to_s + " RM"
	total = manutotal + poltotal + creamtotal + cocototal
	f.puts "Total: " + total.to_s + " RM"
	f.puts "\n-------------------------------------------"
	f.close()
	
	puts "\nManuka Honey: " + manutotal.to_s + " RM"
	puts "Pollen: " + poltotal.to_s + " RM"
	puts "Creamy Honey: " + creamtotal.to_s + " RM"
	puts "Cocoa Honey: " + cocototal.to_s + " RM"
	puts "Total: " + total.to_s + " RM"
end

#main 

def main
	manutotal,poltotal,creamtotal,cocototal,total = 0,0,0,0,0
	while true
		choice = menu
		if (choice == 1)
			manutotal = manuka
		elsif (choice == 2)
			poltotal = pollen
		elsif (choice == 3)
			creamtotal = creamy
		elsif (choice == 4)
			cocototal = cocoa
		elsif (choice == 5)
			calculate(manutotal,poltotal,creamtotal,cocototal)
			break
		else
			print "invalid input try again\n"
		end
	end
	DemoWindow.new.show 	#loads the image "Thank You" with gosu
end

main