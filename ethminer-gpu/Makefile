all:
	docker build -t="tanmenglong/ethminer-gpu" .

create:
	docker run --runtime=nvidia --name ethminer -d tanmenglong/ethminer-gpu
