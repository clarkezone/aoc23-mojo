
fn main() raises:
  let tiktokenwrapper = foo()
  tiktokenwrapper.sayHello("James")

@value
struct foo:
  fn sayHello(self, message: String) raises -> None:
    from python import Python
    let tiktoken = Python.import_module("tiktoken")
    let encoder = tiktoken.get_encoding("cl100k_base")

    let encoded = encoder.encode(message)
    print("encoded:", encoded)

    let decoded = encoder.decode(encoded)
    print("decoded:", decoded)
