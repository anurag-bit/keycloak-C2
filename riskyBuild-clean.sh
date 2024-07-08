!bin/bash

echo "Starting Maven build with tests skipped..."
echo "WARNING: Tests will be skipped."

mvn clean install -DskipTests

if [ $? -eq 0 ]; then
  echo "Build successful."
else
  echo "Build failed. Check Maven output for details."
fi
