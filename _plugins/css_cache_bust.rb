# frozen_string_literal: true

# Make the stylesheet's cache-busting query (?v=...) follow the site's real styles.
#
# The theme links main.css through the `bust_css_cache` filter from the
# jekyll-cache-bust gem, which fingerprints a folder called assets/_sass. This site keeps
# its styles in _sass/ (and the theme's in the gem), so that fingerprint never changed:
# every deploy produced main.css?v=3116ba77..., and browsers kept serving an old cached
# stylesheet after style changes.
#
# This override fingerprints assets/css/main.scss plus every file under _sass/, so any
# style edit gives a new ?v= value and browsers fetch the new CSS. It is registered after
# the gem's filter, so it takes precedence.

require "digest/md5"

module Jekyll
  module SiteCssCacheBust
    def bust_css_cache(file_name)
      site = @context.registers[:site]
      sources = Dir[File.join(site.source, "_sass", "**", "*")].sort
      sources << File.join(site.source, "assets", "css", "main.scss")
      content = sources.select { |f| File.file?(f) }.map { |f| File.binread(f) }.join
      "#{file_name}?v=#{Digest::MD5.hexdigest(content)}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::SiteCssCacheBust)
