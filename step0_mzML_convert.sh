# convert and organize

find "$(pwd)" -type f -name "*.raw" | xargs -P 8 -I{} mono /Users/mitchjo/Downloads/ThermoRawFileParser1.4.5/ThermoRawFileParser.exe -o . -f 2 -i "{}"

# make subdirectories

mkdir ./HILICneg
mkdir ./RPpos
mkdir ./HILICpos
mkdir ./RPneg

# move matching files

mv *HILICneg*.mzML ./HILICneg
mv *HILICpos*.mzML ./HILICpos
mv *RPpos*.mzML ./RPpos
mv *RPneg*.mzML ./RPneg

# remove raw files

rm *.raw