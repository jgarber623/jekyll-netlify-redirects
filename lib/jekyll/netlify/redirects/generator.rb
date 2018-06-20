require 'jekyll'

module Jekyll
  module Netlify
    module Redirects
      class Generator < Jekyll::Generator
        safe true
        priority :low

        def generate(site)
          redirects = site.config['netlify'] && site.config['netlify']['redirects']

          raise 'No Netlify redirects found in Jekyll configuration file(s)!' unless redirects

          page = PageWithoutAFile.new(site, __dir__, '', '_redirects')
          page.content = redirects.join("\n")

          site.pages << page
        end
      end
    end
  end
end
