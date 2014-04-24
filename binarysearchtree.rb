class Node

	attr_accessor :data,:left,:right

	def initialize(data)
		@data = data if !data.nil?			
	end
end


class Tree

	attr_accessor :root

	def initialize(data)
		if @root.nil?
			insert_root(data)		
		end
	end

	def insert_root(data)		
		@root = Node.new(data) if !data.nil?		
	end

	def insert_node(data)
		if @root.nil?
			insert_root(data)
		else
			node = @root
			while node != nil do
				prev_node = node
				if data > node.data
					node = node.right
				else
					node = node.left					
				end
			end

			if data <= prev_node.data
				prev_node.left = Node.new(data)
			else
				prev_node.right = Node.new(data)
			end
							
		end
	end

	def inorder(node)
		return if node.nil?
		inorder(node.left)
		puts node.data
		inorder(node.right)
	end

	def inorder_traverse		
		inorder(@root)
	end



end
