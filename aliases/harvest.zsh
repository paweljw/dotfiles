# Harvest

# function gogo?() {
#   curl -s -H "Harvest-Account-ID: $HARVEST_ACCOUNT_ID" -H "Authorization: Bearer $HARVEST_ACCESS_TOKEN" -H "User-Agent: Harvest API Example" "https://api.harvestapp.com/v2/time_entries?from=$(date +%F)" --output /tmp/harvest.json
#   cat /tmp/harvest.json | jq --raw-output '.time_entries[].hours' > /tmp/harvest_times.txt
#   percent_done=$(echo 'puts (open("/tmp/harvest_times.txt").read.split("\n").map(&:to_f).inject(&:+) * 60.0)/ENV["JOB_DONE"].to_f' | ruby)
#   echo "puts $percent_done >= 1.0 ? 'Świecą, idź sobie' : \"Jeszcze nie świecą, %.2f%\" % (100.0 * $percent_done) " | ruby
# }
