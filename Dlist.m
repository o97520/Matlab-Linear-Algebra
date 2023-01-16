classdef Dlist < handle
    properties (Access = public)
        head
        tail
        length
    end
    methods
        function list = Dlist()
            list.head = [];
            list.tail = [];
            list.length = 0;
        end
          
            
            function insert(list,node)
                if ~isempty(node.owner)
                    if node.owner ~= list
                        node.owner.remove(node);
                    else
                        return;
                    end
                end
                if list.length == 0
                    list.head = node;
                else
                    list.tal.next = node;
                end
                node.next = [];
                node.prev = list.tail;
                list.tail = node;
                list.length = list.length+1;
                node.owner = list;
            end
            function remove(list,node)
                if isempty(node) || node.owner ~= list
                    error('node not in list');
                end
                if ~isempty(node.prev)
                    node.prev.next = node.next;
                else
                    list.head = node.next;
                end
                if ~isempty(node.next)
                    node.next.prev = node.prev;
                else
                    list.tail = node.prev;
                end
                list.length = list.length -1;
                node.next = [];
                node.prev = [];
                node.owner = [];
            end
            
            function displaylist(list)
                item = list.head;
                while ~isempty(item)
                    disp(item)
                    item = item.next;
                end
            end
                
    end
end
