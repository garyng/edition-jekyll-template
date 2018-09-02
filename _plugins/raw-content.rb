module Jekyll

    class RawContent < Generator

        def generate(site)
            site.collections.each do |collection|
                collection[1].each do |post|
                    post.data['raw_content'] = Liquid::Template.parse(post.content).render(@context)
                end
            end
        end
    end
end