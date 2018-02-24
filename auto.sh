FILES=`ls $1`

output="touch $2"
eval $output

for filename in $FILES
do
	echo "Processing $filename:"
	command="./darknet detect cfg/yolo.cfg yolo.weights $1/$filename 1>>$2"
	eval $command
#	add_id=`echo x >> $2`
#	eval $add_id
done
