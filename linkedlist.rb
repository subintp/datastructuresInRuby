
class Node
    attr_accessor :data, :next
    def initialize(data)
        @data = data
        @next = nil
    end
end


class Linkedlist

	attr_accessor :head,:tail,:length	

	def initialize(data)
		if !data.nil?
			insertFirstTime(data)			
		end		
	end

	def insertFirstTime(data)
		@head = Node.new(data) 
		@tail = @head
		@length = 1
	end


	def insertFirst(data) 
		if @head.nil?
			insertFirstTime(data)			
		else
			node = Node.new(data)	
			node.next = @head
			@head = node
			@length += 1			
		end		
	end

	def insertLast(data) 
		if @head.nil?
			insertFirstTime(data)			
		else
			node = Node.new(data)			
			@tail.next = node
			@tail = node
			@length += 1
		end		
	end

	def delete(data)
		if @head.nil?
			puts "Sorry, The list is empty"
		else
			node = @head
			prev_node = @head
			while node != nil do
				if node.data == data
					if node == @head
						@head = @head.next
					else											
						prev_node.next = node.next
					end					
				end				
				prev_node = node				
				node = node.next
			end
		end
	end

	def length
		@length
	end

	def head
		@head
	end

	def getAllData
		listData = Array.new
		node = @head
		while node != nil do
			listData << node.data
			node = node.next
		end
		listData
	end

	def printAll
		temp = @head
		while temp != nil do
			puts temp.data
			temp = temp.next
		end
	end
end
