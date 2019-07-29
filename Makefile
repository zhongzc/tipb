all: go rust binlog c++

go:
	./generate-go.sh

rust:
	cargo build --features gen

binlog:
	./generate-binlog.sh

c++:
	./generate-cpp.sh
	rm -rf build_cpp && mkdir build_cpp && cd build_cpp && cmake ../cpp && make && cd .. && rm -rf build_cpp
