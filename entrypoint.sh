#! /bin/sh


java -Xms${JAVA_MEMORY} -Xmx${JAVA_MEMORY} -XX:+UseG${JAVA_MEMORY}C -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar /velocity/velocity.jar