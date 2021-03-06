# Copyright 2012, Dell
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class CmdbRun < ActiveRecord::Base
  attr_accessible :name, :description, :order, :title, :body

  belongs_to :cmdb
  belongs_to :cmdb_map
  belongs_to :proposal_config

  has_many :cmdb_events


  # given a config_instance, execute cmdb_event on proper nodes  
  def node_update
    #return cmdb_event
  end

end
