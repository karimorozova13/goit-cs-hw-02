arr=("https://google.com" "https://facebook13.com" "https://twitter.com")

for el in ${arr[@]};
do

res=$(curl -s -L --head --request GET "$el")

if [ -n "$res" ]; then
        status="UP"
    else
        status="DOWN"
    fi
echo "$el is $status" 
echo "$el is $status" >> "website_status.log"

done
