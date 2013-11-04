
module ApplicationHelper

  def show_version
    "(0.1 r131101)"
  end

	def full_title(page_title)
		base_title = "YNHCH Ped Card Portal"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

  def pretty_date(date)
    return date unless date.is_a?(Time)
    return date.strftime("%l:%M %P, %B %d, %Y") unless Time.now.year == date.year
    date.strftime("%l:%M %P, %B %d")
  end

  def pretty_date_with_year(date)
    date.strftime("%B %d, %Y")
  end

  def obfuscate_email(email)
      email.gsub("@", " at ").gsub(".", " dot ")
  end

  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(ProtocolMarkdown, {
      autolink: true, space_after_headers: false,
      disable_indented_code_blocks: true,
      superscript: true, highlight: true, footnotes: true
    })
    @markdown.render(content)
  end

  class String
    def unindent
      gsub(/^#{scan(/^\s*/).min_by{|l|l.length}}/, "")
    end
  end

  class ProtocolMarkdown < Redcarpet::Render::HTML
    def preprocess(content)
      #content.gsub!(/p>\s*</, "><")
      content.gsub!(/\[pmid (\d+)\]/) { |m| Protocol::link_to_markdown($1) }
      content
    end
  end

end


