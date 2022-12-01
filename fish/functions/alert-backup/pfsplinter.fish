# Defined in /tmp/fish.TWNbAg/pfsplinter.fish @ line 2
function pfsplinter
set FILE_PATH /home/smillburn/build/EMBD-6547-implement-driver-for-bot-2-0-spi-line-sensor/7.1/driver/line_sensor/src/libdriver_line_sensor.so
sshpass -p root scp $FILE_PATH root@10.105.28.13:/opt/alphabot/lib/
set FILE_PATH /home/smillburn/build/EMBD-6547-implement-driver-for-bot-2-0-spi-line-sensor/7.1/hal/line_sensor/src/libhal_line_sensor.so
sshpass -p root scp $FILE_PATH root@10.105.28.13:/opt/alphabot/lib/
set FILE_PATH /home/smillburn/build/EMBD-6547-implement-driver-for-bot-2-0-spi-line-sensor/7.1/exec/lineSensorAdcTest/bin/line_sensor_adc_test
sshpass -p root scp $FILE_PATH root@10.105.28.13:/opt/alphabot/bin
end
