module AbsolutePathHelper

  def getAbsolutePath(url)
	"#{request.protocol}#{request.host_with_port}#{url}".split('?')[0]
  end

end