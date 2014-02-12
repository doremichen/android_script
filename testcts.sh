#!/bin/bash
chmod +x /system/bin/input
i=0
while [ "$i" != "10" ]
do
am instrument -e class android.mediastress.cts.MediaRecorderStressTest#testStressCamera -w -r com.android.cts.mediastress/android.test.InstrumentationCtsTestRunner
echo "testStressCamera"
i=$(($i+1))
sleep 2
done
