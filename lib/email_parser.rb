# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"
class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def emails
    @emails
  end

  def parse
    email_array = emails.split(" ")
    email_array.map do |word|
      if word.end_with?(",")
        word.chop!
      end
        word
    end.uniq



  end
end
