# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(string)
        @raw_emails = string
    end

    def parse
        parsed = []

        @raw_emails.split(/[, ]+/){ |substr|
            if !parsed.include?(substr)
                parsed << substr
            end
         }
        
        parsed
    end
end