classdef Letternode < LinkedNode
    properties
        letter
    end
    methods
        function obj = Letternode(input)
            if nargin < 1 
                obj.letter = '';
            else
                obj.letter = input;
            end
        end
    end
end