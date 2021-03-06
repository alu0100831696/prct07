require 'spec_helper'
require 'bib/bib_cod'
require 'bib/LinkedList'

describe Bib do
      before :each do
          
         
        @object2 = Bib.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler' ], 
        'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide', 
        '(The Facets of Ruby)',  'Pragmatic Bookshelf', '4 edition', 
        'July 7, 2013', [ 'ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        
        @object3 = Bib.new('Scott Chacon', 'Pro Git 2009th Edition', 'Pro', 'Apress', 
        '2009 edition', 'August 27, 2009', ['ISBN-13: 978-1430218333','ISBN-10: 1430218339'])
        
        @object4 = Bib.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language',
        nil, 'O’Reilly Media', '1 edition', 'February 4, 2008', ['ISBN-10: 0596516177', 
        'ISBN-13: 978-0596516178'])  
        
        @object5 = Bib.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 
        'Zach Dennis', 'Aslak Hellesoy'], 'The RSpec Book: Behaviour Driven Development with 
        RSpec, Cucumber, and Friends', '(The Facets of Ruby)', 'Pragmatic Bookshelf',
        '1 edition', '(December 25, 2010)', ['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
        
        
         @L= LinkedList.new(@object2) 
          @L.add(@object3)
          
        @object = Array.new(2)
        @object = [@object4, @object5]
     
         @L.add(@object)
         
    end
    
    describe "Con node se puede:" do
        
       
        it "Comprobar no vacío" do
              expect(@L).not_to be 0
        end
        
        it "Añadir array de nodos" do
            
            @L.add(@object)
        end 
        
        it "Saber si se ha creado un nodo o está vacio (nil)" do
            expect(@L.head).not_to be nil
        end
        it "Obtener valor del primer nodo" do
            expect(@L.head.value.to_s).to eq @object2.to_s
        end
        it "Si al nodo al que apunta (next) no es nil" do
            expect(@L.head.next).to eq nil
        end
        it "Obtener valor del último elemento" do
            expect(@L.fin.value).to eq @object5
        end
    end
end