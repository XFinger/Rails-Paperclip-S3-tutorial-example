class User < ActiveRecord::Base
  
 attr_accessible :avatar, :avatar_file_name 
 validates_attachment_presence :avatar #leave line out if you prefer having a default image when none is attached 
 validates_attachment_size :avatar, :less_than => 3.megabytes  #limits uploadee image size   
        
        
 has_attached_file :avatar,
 :styles => {:thumb => {:geometry => '75x75>', :format => :jpg},
 :original => {:geometry => '180x180>', :format => :jpg}},
 :storage => :s3,
 :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
 :path => ":attachment/:id/:style.:extension",
 :bucket => 'centralcortex',
 :default_url => '/images/missing_:style.jpg' 
 
 
#------------ Use this if you want to use the local file system instead of Amazon S3 ------# 
#
#  has_attached_file :avatar,
#  :styles => {:thumb => {:geometry => '75x75>', :format => :jpg},
#  :original => {:geometry => '180x180>', :format => :jpg}},
#  :url => "/system/:attachment/:id/:style/:basename.:extension",  
#  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension",  
#  :default_url => '/images/missing_:style.jpg'   
# 
#-----------------------------------------------------------------------------------------#
  
end
