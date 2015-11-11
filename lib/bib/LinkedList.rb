require "bib/version"
require "bib/bib_cod"


	Node = Struct.new :value, :next #Clase Nueva

class LinkedList
		attr_reader  :head, :fin
		
		def initialize (bib)
			if bib.instance_of? Bib
				@head = Node.new(bib, nil)
				@fin = nil
			end
		end
		
		def add (value) #Se pueden pasar una o varias referencias (Bib).
			if value.instance_of? Bib #Una
				if @head == nil
					@head = Node.new(value, nil)
					@fin = nil
				else
					if @fin == nil
						@fin = Node.new(value, nil)
					else
						aux = @fin
						@fin = Node.new(value, nil)
						aux.next = @fin
					end
				end
			elsif value.instance_of? Array #Varias
				value.each do |i|
					self.add(i) # self = array.
				end
			end
		
		end
end