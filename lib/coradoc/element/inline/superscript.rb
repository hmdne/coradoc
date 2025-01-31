module Coradoc
  module Element
    module Inline
      class Superscript
        attr_accessor :content

        def initialize(content)
          @content = content
        end

        def to_adoc
          content = Coradoc::Generator.gen_adoc(@content)
          "#{content[/^\s*/]}^#{content.strip}^#{content[/\s*$/]}"
        end
      end
    end
  end
end
