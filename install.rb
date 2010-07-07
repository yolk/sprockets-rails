require "fileutils"
include FileUtils::Verbose

rails_root = defined?(Rails) ? Rails.root : File.expand_path(File.join(File.dirname(__FILE__), "..", "..", ".."))

mkdir_p File.join(rails_root, "vendor", "sprockets")
mkdir_p File.join(rails_root, "app", "javascripts")
touch   File.join(rails_root, "app", "javascripts", "application.js")

unless File.exists?(File.join(rails_root, "config", "sprockets.yml"))
cp      File.join(File.dirname(__FILE__), "config", "sprockets.yml"), 
        File.join(rails_root, "config")
end
