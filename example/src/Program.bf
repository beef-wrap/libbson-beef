using System;
using System.Diagnostics;
using static libbsonBeef.libbson;

namespace example;

class Program
{
	public static int Main(String[] args)
	{
		bson_error_t err = .();

		String data = """
			{ "a": 1, "b": "two", "c": true }
		""";

		//let b2 = bson_init_from_json();

		let bson = bson_new_from_json((.)data.Ptr, (.)data.Length, &err);

		let json = bson_as_relaxed_extended_json(bson, null);

		Debug.WriteLine($"{StringView(json)}");

		bson_free(json);

		bson_destroy(bson);

		return 0;
	}
}