##Challenge: find the second largest value on a binary search tree.##

#Node class creates instances of node objects.
class Node

  #create getter method to access instance variables
  attr_accessor :value, :nodeL, :nodeR

  #initialize method to assign values to new objects
  def initialize(value,nodeL=nil,nodeR=nil)
    @value = value
    @nodeL = nodeL
    @nodeR = nodeR
  end

  #Method to print the children of a node
  def printChildren

    puts "Node with value " + self.value.to_s + " has:"

    if self.nodeL
      puts "-Left side child with value of: " + self.nodeL.value.to_s
    else
      puts "-No left children"
    end

    if self.nodeR
      puts "-Right side child with value of: " + self.nodeR.value.to_s
    else
      puts "-No right children"
    end
    puts "--------------------------"
  end

end

#findLargestNode method finds the node with the largest value of the a tree
#Must pass the top node of the tree as the parameter
def findLargestNode(node)
  if !node.nodeR
    puts "Found last node to the right. Its value is: " + node.value.to_s
  else
    puts "We are not at the end of the tree yet..."
    findLargestNode(node.nodeR)
  end
end

#findSecondLargestNode method finds the node with the second largest value of the a tree
#Must pass the top node of the tree as the only parameter. Second and third parameters are only used for recursion calls.
def findSecondLargestNode(node,previousNode=nil,firstTime=true)
  if !node.nodeR
    #firstTime flags if the top node has no right child.
    if firstTime
      puts "Top node has no right branch"
      if node.nodeL
        puts "The second largest value of the tree is: " + node.nodeL.value.to_s
      else
        puts "No children. There is only one value on this tree"
      end
    else
      puts "Found last node to the right. Its value is: " + node.value.to_s
      puts "And the second largest value of the tree is: " + previousNode.value.to_s
    end

  else
    puts "We are not at the end of the tree yet..."
    firstTime = false
    findSecondLargestNode(node.nodeR,node,false)
  end
end

#The sample tree follows the tree in this image: https://en.wikipedia.org/wiki/Binary_search_tree#/media/File:Binary_search_tree.svg
#where n0 is at the top of the tree. Next level n1,n2, then n3,n4,n5, then n6,n7,n8.

n8 = Node.new(13)
n7 = Node.new(7)
n6 = Node.new(4)
n5 = Node.new(14,n8)
n4 = Node.new(6,n6,n7)
n3 = Node.new(1)
n1 = Node.new(3,n3,n4)
n2 = Node.new(10,nil,n5)
n0 = Node.new(8,n1,n2)

#Use next line to print the children of a node
#n2.printChildren

#Find node with the largest value
#findLargestNode(n0)

#Find node with the second largest value
findSecondLargestNode(n0)
