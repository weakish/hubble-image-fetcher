require 'hubble-image-fetcher/version'
require 'open-uri'
require 'nokogiri'

module HubbleImageFetcher

	module_function

	# Get download link for original image.
	#
	# @param [String] image_page_url
	# @return [String] a link to the original image
	#
	# @example
	# 	image_page_url = 'http://www.spacetelescope.org/images/potw1348a/'
	# 	HubbleImageFetcher.get_link(image_page_url)
	# 	#=> 'http://www.spacetelescope.org/static/archives/images/original/potw1348a.tif'

	def get_link(image_page_url)
		html = Nokogiri::HTML(open(image_page_url))
		relative_original_image_url = html.at('.archive_dl_text a')['href']

		base_url = 'http://www.spacetelescope.org'
		base_url + relative_original_image_url
	end
end
