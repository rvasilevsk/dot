vim -c "hardcopy > temp_out.ps" -c "q" $1
ps2pdf temp_out.ps temp_out.pdf
rm temp_out.ps
