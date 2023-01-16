classdef LinkedNode < handle
    properties 
        prev
        next
        owner
    end
    methods
        function node = LinkedNode()
            node.prev = [];
            node.next = [];
            node.owner = [];
        end
    end
end
