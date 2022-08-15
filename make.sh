export R_VERSION=4.1.2
for i in Dockerfile.*
do
	distro=${i/Dockerfile./}
docker build --build-arg R_VERSION -f $i -t r-bench-4.1.2:$distro . 
docker run r-bench-4.1.2:$distro > results/$distro.log 
done 
