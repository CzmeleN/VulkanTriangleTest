CFLAGS = -std=c++17 -O2

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) main.cpp -o VulkanTest $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest