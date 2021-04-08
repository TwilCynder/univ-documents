# The class of Huffman trees, with subclasses Leaf and Node

class Htree:
    def __init__(self, val):
        self.val = val
    def view(self, indent):
        if isinstance(self, Leaf):
            print((" " * indent * 4), self.val, ":", self.code)
        else:
            print((" " * indent * 4), self.val)
            self.low.view(indent + 1)
            self.high.view(indent + 1)
        

# constructor Leaf(val, code)
class Leaf(Htree):
    def __init__(self, val, code):
        self.val = val
        self.code = code

# constructor Node(val, low, high)
class Node(Htree):
    def __init__(self, val, low,  high):
        self.val = val
        self.low = low
        self.high = high

