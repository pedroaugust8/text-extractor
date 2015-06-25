require './text_extractor'

text_extractor = TextExtractor.new

File.open(ARGV[0].to_s, "r") do |infile|
    while (line = infile.gets)
        site_list = line.gsub(/\s+/m, ' ').split(";")
        puts site_list
        site_list.each do |site|
        	text_extractor.scan(site)
			text_extractor.search
        end
    end
end

text_extractor.clean_duplicate_results

