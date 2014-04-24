
class Node
    attr_accessor :data, :next
    def initialize(data)
        @data = data
        @next = nil
    end
end


class Linkedlist

	attr_accessor :head,:tail,:length

	def each
		node = @head
		while node != nil do
			yield node.data if block_given?
			node = node.next
		end
	end	

	def initialize(data)		
		insert_head(data) if !data.nil?				
	end

	def insert_head(data)
		@head = Node.new(data) 
		@tail = @head		
	end

	def insert_node(data)
		if @head.nil?
			insert_head(data)			
		else
			node = Node.new(data)	
			yield node			
		end

	end


	def insert_first(data)
		insert_node(data) do |node|
			node.next = @head
			@head = node
		end			
	end

	def insert_last(data)
		insert_node(data) do |node|
			@tail.next = node
			@tail = node
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
		length = 0
		self.each{ |n| length += 1}	
		length		
	end

	def head
		@head
	end

	def get_all_data
		list_data = Array.new
		self.each{ |n| list_data << n}			
		list_data
	end

	def print_all
		self.each{ |n| puts n }		
	end
end
