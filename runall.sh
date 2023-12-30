count=$(pgrep -c lora_pkt_fwd)
echo $count

if [[ $count -eq 2 ]]; 
then 
	echo "ALREADY RUNNING";
else
	pgrep lora_pkt_fwd$i | xargs kill		
	cd /home/latest_packet_forwarder/sx1302_hal/packet_forwarder/ && ./lora_pkt_fwd &
	cd /home/latest_packet_forwarder2/sx1302_hal/packet_forwarder/ && ./lora_pkt_fwd &    
fi       
