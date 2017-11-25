Pod::Spec.new do |s|
  s.name         = "GPX"
  s.version      = "0.0.1"
  s.source       = { :git => "https://github.com/sammy-SC/GPX.git", :tag => "#{s.version}" }
  s.summary      = "Small library for generating GPX files."
  s.description  = "Cryptography functions and helpers for Swift implemented in Swift. SHA-1, SHA-2, SHA-3, MD5, PBKDF1, PBKDF2, CRC, Poly1305, HMAC, ChaCha20, Rabbit, Blowfish, AES"
  s.homepage     = "https://github.com/sammy-SC/GPX"
  s.license      = {:type => "Attribution License", :file => "LICENSE"}
  s.authors      = {'Samuel Susla' => 'samuel.susla@gmail.com'}
  s.social_media_url   = "https://twitter.com/SamuelSusla"
  s.ios.deployment_target = "9.0"
  s.source_files  = "Sources/GPX/**/*.swift"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0', 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule', 'SWIFT_DISABLE_SAFETY_CHECKS' => 'YES', 'SWIFT_ENFORCE_EXCLUSIVE_ACCESS' => 'compile-time', 'GCC_UNROLL_LOOPS' => 'YES'}
end
