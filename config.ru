use Rack::Static, 
  :urls => ["/stylesheets", "/chapter1.html", "/chapter2.html", "/chapter3.html", "/chapter4.html", "/chapter5.html", "/chapter6.html", "/chapter7.html", "/chapter8.html", "/chapter9.html", "/toc.html"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
