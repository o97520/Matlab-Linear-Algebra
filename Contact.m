classdef Contact
    properties
        Firstname
        Lastname
        Phonenumber
    end
    methods
        
        function obj = Contact(lname,fname,phone)
            if nargin < 3 , phone = '';end
            if nargin < 2 , fname = '';end
            if nargin < 1 , lname = '';end
            obj.Firstname = string(fname);
            obj.Lastname = string(lname);
            obj.Phonenumber = string(phone);
        end
        function obj = set.Lastname(obj, lname)
            obj.Lastname = string(lname);
        end
        function obj = set.Firstname(obj, fname)
            obj.Firstname = string(fname);
        end
        function obj = set.Phonenumber(obj, phone)
            obj.Phonenumber = string(phone);
        end
        
        function lname = get.Lastname(obj)
            lname = obj.Lastname;
        end
        
        function printName(obj)
            fprintf('%s %s \n', obj.Firstname, obj.Lastname)
        end
                
    end
end


