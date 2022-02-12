#!/usr/bin/bash

get_battery_combined_percent() {

	# get charge of all batteries, combine them
	total_charge=$(expr $(acpi -b | awk '{print $4}' | grep -Eo "[0-9]+" | paste -sd+ | bc));

	# get amount of batteries in the device
	battery_number=$(acpi -b | wc -l);

	percent=$(expr $total_charge / $battery_number);

	echo $percent;
}

get_batery_charging_status () {
    if $(acpi -b | grep --quiet Discharging)
    then 
        echo ""
    else
        echo ""
    fi
}

print_date(){
	date '+%Y年%m月%d日 %H:%M'
}

xsetroot -name "$(get_batery_charging_status) $(get_battery_combined_percent)%,  | $(print_date)"
