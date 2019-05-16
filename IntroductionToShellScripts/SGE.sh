#!/bin/bash

echo
echo "(c) 2004 Sun Microsystems, Inc. Use is subject to license terms."
echo "This is a simple example of a SGE batch script"
echo

echo "PRINT DATE AND TIME"
date
echo

echo "Sleep for 10 seconds"
sleep 10
echo

echo "PRINT DATE AND TIME AGAIN AFTER TASK COMPLETED"
date
echo
