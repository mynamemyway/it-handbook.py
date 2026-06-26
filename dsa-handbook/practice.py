# dsa-handbook/practice.py
# DLL

# Create new class DLL
class DoublyLinkedList:
    def __init__(self, val=None, next=None, prev=None):
        self.val = val
        self.next = next
        self.prev = prev

# Create nodes for DLL
node1 = DoublyLinkedList('A')
node2 = DoublyLinkedList('B')
node3 = DoublyLinkedList('C')
dm = DoublyLinkedList()

# Create links for all nodes + init head
dm.next = node1

node1.next = node2
node1.prev = dm

node2.next = node3
node2.prev = node1

node3.prev = node2

head = node1

# Delete node2 (B)
# node1.next = node3
# node3.prev = node1

# Insert new_node between node1 and node2
new_node = DoublyLinkedList('X')

node1.next = new_node
node2.prev = new_node
new_node.next = node2
new_node.prev = node1
