# Copy the views into RAILS_ROOT/app/views/revisions
#RAILS_ROOT = File.join(File.dirname(__FILE__), '../../../')
#
#unless FileTest.exist? File.join(RAILS_ROOT, 'app', 'views', 'revisions')
#  FileUtils.mkdir( File.join(RAILS_ROOT, 'app', 'views', 'revisions') )
#end
#
#FileUtils.cp( 
#  Dir[File.join(File.dirname(__FILE__), 'views', '*.rhtml')], 
#  File.join(RAILS_ROOT, 'app', 'views', 'revisions'),
#  :verbose => true
#)
