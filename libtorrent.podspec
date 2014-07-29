Pod::Spec.new do |s|
  s.name         = "libtorrent"
  s.version      = "1.0.0"
  s.summary      = "libtorrent is a C++ library that aims to be a good alternative to all the other bittorrent implementations around."
  s.description  = <<-DESC
libtorrent is a feature complete C++ bittorrent implementation focusing on efficiency and scalability. It runs on embedded devices as well as desktops. It boasts a well documented library interface that is easy to use. It comes with a simple bittorrent client demonstrating the use of the library.

The main goals of libtorrent are:

to be cpu efficient
to be memory efficient
to be very easy to use
                   DESC
  s.homepage     = "http://libtorrent.com/"
  s.screenshots  = 
  s.license      = 'BSD'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/libtorrent.git" , :tag => s.version.to_s }

  s.platform     = :osx, '10.6'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.preserve_paths = s.public_header_files = 
     'include/**/*.{h,hpp}',
     'include/**/**/*.{h,hpp}'
  s.header_mappings_dir = 'include'
end
