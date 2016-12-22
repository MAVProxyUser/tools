#ActiveRecord
##scope
scope :at_time, ->{where("created_at < ? and updated_at > ?",Time.now, Time.now)}
