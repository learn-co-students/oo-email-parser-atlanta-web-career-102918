# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    split_emails = self.emails.split(" ")
    parsed_emails = split_emails.collect {|e| e.split(",")[0]}.uniq
  end
end