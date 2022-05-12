##
# Plugin to add ids to H2s and also provide a set of titles and ids suitable for creating links
# NB this tries to parse the HTML5 string parsed and then serialise it again
##

## NB remote theme does not support plugins so we access it as a shared file via theme-data
# To install create a _plugins folder in the resource and link to this file in_external/data
# Also add nokigir to the gem

require 'nokogiri'

module Jekyll
    module HeadingIDFilter

        # Ads id attribute to H2 based on text
        def add_h2_ids(content)
            doc = Nokogiri::HTML5.fragment(content)
            # TODO maybe add option to print errors like this
            # As it is this will change the content if html is invalid.
            #        doc = Nokogiri::HTML5.fragment(content, max_errors: 10)  
            #        doc.errors.each do |err|
            #            puts(err)
            #        end
            doc.css('h2').each do |h2|
                if !h2['id']
                    h2['id'] = fragmentify h2.text
                end
            end
            return doc.to_s
        end

        # Get an array of links
        def get_h2_links(content)
            doc = Nokogiri::HTML5.fragment(content)
            names = doc.css('h2').map { |h2| h2.text }
            ids = doc.css('h2').map { |h2| h2['id'] }
            links = names.zip( ids )
            return links
        end
        
        private

        # Convert text to be suitable for a URl fragment and HTML element id
        # Both HTML5 id and URL fragment are very flxible so we just strip whitespace (not lf)
        def fragmentify(text)
            return text
            .downcase
            .gsub(/[\s]/, '')
        end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::HeadingIDFilter)