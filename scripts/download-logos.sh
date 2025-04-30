#!/bin/bash

# Create logos directory if it doesn't exist
mkdir -p dist/logos

# Download Kafka logo
curl -L "https://github.com/apache/spark-website/raw/asf-site/images/kafka.png" -o dist/logos/kafka.png

# Download Apache Spark logo
curl -L "https://github.com/apache/spark-website/raw/asf-site/images/spark-logo-trademark.png" -o dist/logos/spark.png

# Download Flink logo
curl -L "https://raw.githubusercontent.com/apache/flink/master/docs/static/flink-header-logo.svg" -o dist/logos/flink.svg

# Download Delta Lake logo
curl -L "https://github.com/apache/spark-website/raw/asf-site/images/delta-lake-logo.png" -o dist/logos/delta.png

# Convert SVGs to PNGs using ImageMagick if available
if command -v convert &> /dev/null; then
    for logo in kafka flink delta; do
        convert dist/logos/$logo.svg dist/logos/$logo.png
    done
fi 