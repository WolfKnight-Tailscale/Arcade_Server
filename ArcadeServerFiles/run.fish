#!/usr/bin/env fish

# --- CONFIGURATION ---
# 1. Paste the full path to the 'java' executable here.
#    (Example: /home/adityak/.local/share/PrismLauncher/java/17/bin/java)
set JAVA_PATH "/mnt/disk-2/Games/PineconeMC/home/.local/share/ElyPrismLauncher/java/eclipse_temurin_jre25.0.4+7/bin/java"

# 2. How much RAM to give the server?
set RAM 8G

# 3. What is your server jar file named?
set JAR_FILE fabric-server.jar

# --- AIKAR'S FLAGS (Optimized for Performance) ---
#
$JAVA_PATH -Xms$RAM -Xmx$RAM \
    -XX:+UseG1GC \
    -XX:+ParallelRefProcEnabled \
    -XX:MaxGCPauseMillis=200 \
    -XX:+UnlockExperimentalVMOptions \
    -XX:+DisableExplicitGC \
    -XX:+AlwaysPreTouch \
    -XX:G1NewSizePercent=30 \
    -XX:G1MaxNewSizePercent=40 \
    -XX:G1HeapRegionSize=8M \
    -XX:G1ReservePercent=20 \
    -XX:G1HeapWastePercent=5 \
    -XX:G1MixedGCCountTarget=4 \
    -XX:InitiatingHeapOccupancyPercent=15 \
    -XX:G1MixedGCLiveThresholdPercent=90 \
    -XX:G1RSetUpdatingPauseTimePercent=5 \
    -XX:SurvivorRatio=32 \
    -XX:+PerfDisableSharedMem \
    -XX:MaxTenuringThreshold=1 \
    -Dusing.aikars.flags=https://mcflags.emc.gs \
    -Daikars.new.flags=true \
    -jar $JAR_FILE nogui
