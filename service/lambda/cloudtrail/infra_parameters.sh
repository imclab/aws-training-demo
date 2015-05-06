#    Copyright 2015, Amazon Web Services.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

##########################################
#
# YOU ARE REQUIRED TO CHANGE THESE VALUES
#
##########################################

# CHANGEME : Choose a globally unique bucket name
BUCKETNAME=cloudtrail-logs-sst

# CHANGEME : Use your email address
EMAIL=stormacq@amazon.lu

# (optional) CHANGEME : adjust region name
REGION=eu-west-1

# (optional) CHANGEME : Change to your profile name
PROFILE=default

##########################################
#
# No changes required below this line
#
##########################################

BASENAME=lambda-cloudtrail
TRAILNAME=$BASENAME
TOPICNAME=$BASENAME
ROLEEXECNAME=$BASENAME-exec
ROLEINVOKENAME=$BASENAME-invoke
POLICYEXECNAME=lambda-cloudtrail-analysis
POLICYINVOKENAME=s3-invoke-lambda
FUNCTIONNAME=$BASENAME


function status {
   color='\033[0;34m' # blue
   nc='\033[0m'       # no color
   echo -e "${color}$1${nc}"
}
