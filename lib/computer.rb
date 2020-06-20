# http://ruby-for-beginners.rubymonstas.org/advanced/modules.html
# Main computer module. This file just initializes the module naming convention we use in this project.
module Computer; end

require_relative "./computer/boot"
require_relative "./computer/system/system"
require_relative "./computer/app/app"

# Computer::Boot.new.start
