import NewCodable

@main
struct App {
    static func main() throws {
        // swift run --swift-sdk swift-6.4.x-DEVELOPMENT-SNAPSHOT-2026-08-14-a_wasm-embedded -c release NewCodableEmbeddedCrasher

        print(
            try NewJSONEncoder().encode(666) { bytes in
                String(copying: .init(unchecked: .init(viewing: bytes)))
            }
        )
    }
}
