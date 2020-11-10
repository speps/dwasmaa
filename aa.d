module aa;

import wasm;

enum EnumTest
{
	Invalid,
	One,
	Two,
	Three
}

public class TestA {
public:
	this(EnumTest v)
	{
		this.v = cast(int)v;
	}

	int v;
}

void main() {
	TestA[EnumTest] aa;
	aa[EnumTest.One] = new TestA(EnumTest.One);
	aa[EnumTest.Two] = new TestA(EnumTest.Two);
	aa[EnumTest.Three] = new TestA(EnumTest.Three);
	if (EnumTest.Three in aa) {
		wasm.write("three ok");
	} else {
		wasm.write("three NOT ok");
	}
}
