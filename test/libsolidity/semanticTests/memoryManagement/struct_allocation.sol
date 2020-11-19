contract C {
    struct S { uint x; uint y; uint z; }
    function withValue() public pure returns (uint) {
        uint start;
        assembly { start := mload(0x40) }
        S memory t = S(1, 2, 3);
        uint end;
        assembly { end := mload(0x40) }
        return end - start;
    }
    function withoutValue() public pure returns (uint) {
        uint start;
        assembly { start := mload(0x40) }
        S memory t;
        uint end;
        assembly { end := mload(0x40) }
        return end - start;
    }
}
// ====
// compileViaYul: also
// ----
// withValue() -> 0x60
// withoutValue() -> 0x60
