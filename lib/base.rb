# frozen_string_literal: true
#
# Author:: Chef Partner Engineering (<partnereng@chef.io>)
# Copyright:: Copyright (c) 2017 Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'logger'

# Base module for vcenter knife commands
module Base
  attr_accessor :log

  # Creates the @log variable
  #
  def self.log
    @log ||= init_logger
  end

  # Set the logger level by default
  #
  def self.init_logger
    log = Logger.new(STDOUT)
    log.progname = 'Knife VCenter'
    log.level = Logger::INFO
    log
  end
end
