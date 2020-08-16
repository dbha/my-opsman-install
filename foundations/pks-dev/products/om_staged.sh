
#om -e env.yml staged-products
#om -e env.yml staged-config --include-credentials=false --include-placeholders=false --product-name pivotal-container-service > pks.yml
#om -e env.yml staged-config --include-credentials=false --include-placeholders=false --product-name p-healthwatch2 > healthwatch2.yml
#om --env env/foundations/pks-dev/opsman/env.yml staged-director-config --include-placeholders=false --no-redact