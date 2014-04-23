class Node

	attr_reader :data,:next
	attr_writer :data,:next

	@@head = nil
	@@tail = nil
	@@length = 0

	def initialize(data)
		@data = data
		@next = nil
	end 

	def self.insertLast(node) 
		if @@head.nil?
			@@head = node
			@@tail = node
		else			
			@@tail.next = node
			@@tail = node
		end
		@@length += 1
	end


	def self.insertFirst(node) 
		if @@head.nil?
			@@head = node
			@@tail = node
		else
			node.next = @@head
			@@head = node			
		end
		@@length += 1
	end


	def self.length
		@@length
	end

	def self.head
		@@head
	end

	def self.getList
		listData = Array.new()
		temp = @@head
		while temp != nil
			listData << temp.data
			temp = temp.next
		end
		listData
	end


	def self.printAll
		temp = @@head
		while temp != nil
			puts temp.data
			temp = temp.next
		end

	end

end
