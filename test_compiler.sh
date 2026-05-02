#!/usr/bin/env bash
# Zinc Compiler - smoke tests

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${repo_root}"

echo "=== Zinc Programming Language Compiler ==="
echo ""
echo "Building compiler..."
make rebuild > /dev/null 2>&1

if [ ! -f ./build/znc ]; then
  echo "❌ Build failed (missing ./build/znc)"
  exit 1
fi

echo "✅ Compiler built successfully!"
echo ""
echo "Usage:"
echo "  ./build/znc <program.zn> [-o output.s]"
echo ""
echo "Examples:"
echo ""

# Test 1: Hello World
echo "[Test 1] Hello World"
cat > /tmp/test_hello.zn << 'EOF'
func int main() {
    txtout("Hello from Zinc!");
    out(0);
}
EOF
./build/znc /tmp/test_hello.zn -o /tmp/test_hello | grep -E "(Successful|Found)" || true
/tmp/test_hello | grep -q "Hello from Zinc!" || { echo "❌ Hello World output mismatch"; exit 1; }

# Test 2: Variables
echo ""
echo "[Test 2] Variables and Assignment"
cat > /tmp/test_var.zn << 'EOF'
func int main() {
    x is 10;
    y is 20;
    z is x + y;
    txtout("Sum calculated");
    out(0);
}
EOF
./build/znc /tmp/test_var.zn -o /tmp/test_var | grep -E "(Successful|Found)" || true
/tmp/test_var | grep -q "Sum calculated" || { echo "❌ Variables output mismatch"; exit 1; }

# Test 3: Control flow
echo ""
echo "[Test 3] Control Flow"
cat > /tmp/test_if.zn << 'EOF'
func int main() {
    x is 5;
    if (x > 0) {
        txtout("positive");
    }
    out(0);
}
EOF
./build/znc /tmp/test_if.zn -o /tmp/test_if | grep -E "(Successful|Found)" || true
/tmp/test_if | grep -q "positive" || { echo "❌ Control flow output mismatch"; exit 1; }

# Test 4: Else-if chain
echo ""
echo "[Test 4] Else-If"
cat > /tmp/test_else_if.zn << 'EOF'
func int main() {
    x is 0;
    if (x > 0) {
        txtout("positive");
    }
    else if (x == 0) {
        txtout("zero");
    }
    else {
        txtout("negative");
    }
    out(0);
}
EOF
./build/znc /tmp/test_else_if.zn -o /tmp/test_else_if| grep -E "(Successful|Found)" || true
/tmp/test_else_if | grep -q "zero" || { echo "❌ Else-if output mismatch"; exit 1; }

# Test 5: Pointers
echo ""
echo "[Test 5] Pointers"
cat > /tmp/test_ptr.zn << 'EOF'
func int main() {
    x is 41;
    int* p is &x;
    *p is *p + 1;
    txtout(x);
    out(0);
}
EOF
./build/znc /tmp/test_ptr.zn -o /tmp/test_ptr | grep -E "(Successful|Found)" || true
/tmp/test_ptr | grep -q "^42$" || { echo "❌ Pointer output mismatch"; exit 1; }

# Test 6: Dynamic inference / redefinition
echo ""
echo "[Test 6] Dynamic Variables"
cat > /tmp/test_dynamic.zn << 'EOF'
func int main() {
    v is 0;
    v is "test";
    txtout(v);
    out(0);
}
EOF
./build/znc /tmp/test_dynamic.zn -o /tmp/test_dynamic | grep -E "(Successful|Found)" || true
/tmp/test_dynamic | grep -q "^test$" || { echo "❌ Dynamic variable output mismatch"; exit 1; }

# Test 7: txtout variadic
echo ""
echo "[Test 7] Variadic txtout"
cat > /tmp/test_txtout_args.zn << 'EOF'
func int main() {
    x is 10;
    txtout("x is: ", x, "!");
    out(0);
}
EOF
./build/znc /tmp/test_txtout_args.zn -o /tmp/test_txtout_args | grep -E "(Successful|Found)" || true
/tmp/test_txtout_args | grep -q "^x is: 10!$" || { echo "❌ Variadic txtout output mismatch"; exit 1; }

# Test 7b: Typecheck user function return types
echo ""
echo "[Test 7b] User Function Return Types"
cat > /tmp/test_fn_ret.zn << 'EOF'
func int num1() {
    return 1;
}

func int main() {
    x is num1() + 5;
    txtout(x);
    out(0);
}
EOF
./build/znc /tmp/test_fn_ret.zn -o /tmp/test_fn_ret | grep -E "(Successful|Found)" || true
/tmp/test_fn_ret | grep -q "^6$" || { echo "❌ Function return typing output mismatch"; exit 1; }

# Test 8: Reject invalid assignment targets
echo ""
echo "[Test 8] Invalid Assignment Target"
cat > /tmp/test_bad_assign.zn << 'EOF'
func int main() {
    1 is 2;
    out(0);
}
EOF
if ./build/znc /tmp/test_bad_assign.zn -o /tmp/test_bad_assign > /tmp/test_bad_assign.log 2>&1; then
  echo "❌ Expected compiler to reject invalid assignment target"
  exit 1
fi

# Test 9: Reject keyword-as-identifier without escape
echo ""
echo "[Test 9] Keyword Identifier Reject"
cat > /tmp/test_kw_ident_bad.zn << 'EOF'
func int main() {
    if is 1;
    out(0);
}
EOF
if ./build/znc /tmp/test_kw_ident_bad.zn -o /tmp/test_kw_ident_bad > /tmp/test_kw_ident_bad.log 2>&1; then
  echo "❌ Expected compiler to reject keyword used as identifier"
  exit 1
fi

# Test 10: Reject '=' as assignment
echo ""
echo "[Test 10] Reject '=' Assignment"
cat > /tmp/test_eq_assign.zn << 'EOF'
func int main() {
    x = 1;
    out(0);
}
EOF
if ./build/znc /tmp/test_eq_assign.zn -o /tmp/test_eq_assign > /tmp/test_eq_assign.log 2>&1; then
  echo "❌ Expected compiler to reject '=' assignment (use 'is')"
  exit 1
fi

# Test 11: Demo regression
echo ""
echo "[Test 11] Demo Program"
./build/znc examples/demo.zn -o /tmp/demo | grep -E "(Successful|Found)" || true
/tmp/demo <<< "test" | grep -q "Sum is positive" || { echo "❌ Demo output mismatch"; exit 1; }

# Test 11b: String equality (argv compare)
echo ""
echo "[Test 11b] String Equality"
/tmp/demo ping <<< "test" | head -n 1 | grep -q "^pong$" || { echo "❌ String equality output mismatch"; exit 1; }

# Test 11c: Class copy() deep copy
echo ""
echo "[Test 11c] Class Copy"
cat > /tmp/test_class_copy.zn << 'EOF'
class Point {
    int x;
}

func int main() {
    p1 is Point();
    p1->x is 1;

    p2 is p1;
    p3 is copy(p1);

    p1->x is 2;
    txtout(p2->x);
    txtout(p3->x);

    free(p1);
    free(p3);
    out(0);
}
EOF
./build/znc /tmp/test_class_copy.zn -o /tmp/test_class_copy | grep -E "(Successful|Found)" || true
/tmp/test_class_copy | head -n 2 | tr '\n' ' ' | grep -q "^2 1 " || { echo "❌ Class copy output mismatch"; exit 1; }

# Test 12: Reject script-style top-level statements
echo ""
echo "[Test 12] Top-Level Script"
cat > /tmp/test_script.zn << 'EOF'
num is 1 + 2 * 3;
txtout(num);
out(0);
EOF
# Ensure we are not accidentally running a stale binary from a previous test run.
rm -f /tmp/test_script
if ./build/znc /tmp/test_script.zn -o /tmp/test_script > /tmp/test_script.log 2>&1; then
  echo "❌ Expected compiler to reject top-level statements (wrap them in func main)"
  exit 1
fi

# Test 13: Module imports (module(); + import(...))
echo ""
echo "[Test 13] Module Imports"
mkdir -p /tmp/zn_mods
cat > /tmp/zn_mods/math.zn << 'EOF'
module();

func int add2(int x) {
    return x + 2;
}
EOF
cat > /tmp/test_imports.zn << 'EOF'
import("/tmp/zn_mods/math.zn");

func int main() {
    v is add2(40);
    txtout(v);
    out(0);
}
EOF
./build/znc /tmp/test_imports.zn -o /tmp/test_imports | grep -E "(Successful|Found|Assembly written)" || true
/tmp/test_imports | grep -q "^42$" || { echo "❌ Module import output mismatch"; exit 1; }

# Test 14: Reject circular module dependencies
echo ""
echo "[Test 14] Circular Modules"
cat > /tmp/zn_mods/a.zn << 'EOF'
module();
import("/tmp/zn_mods/b.zn");
func int fa() { return 1; }
EOF
cat > /tmp/zn_mods/b.zn << 'EOF'
module();
import("/tmp/zn_mods/a.zn");
func int fb() { return 2; }
EOF
cat > /tmp/test_circular.zn << 'EOF'
import("/tmp/zn_mods/a.zn");
func int main() { out(0); }
EOF
if ./build/znc /tmp/test_circular.zn -o /tmp/test_circular > /tmp/test_circular.log 2>&1; then
  echo "❌ Expected compiler to reject circular module dependency"
  exit 1
fi

# Test 15: Recursion
echo ""
echo "[Test 15] Recursion"
cat > /tmp/test_recursion.zn << 'EOF'
func int fact(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * fact(n - 1);
}

func int main() {
    txtout(fact(5));
    out(0);
}
EOF
./build/znc /tmp/test_recursion.zn -o /tmp/test_recursion | grep -E "(Successful|Found|Assembly written)" || true
/tmp/test_recursion | grep -q "120" || { echo "❌ Recursion output mismatch"; exit 1; }

# Test 16: Method recursion (unqualified call inside class method)
echo ""
echo "[Test 16] Method Recursion"
cat > /tmp/test_method_recursion.zn << 'EOF'
class Math {
    func int fib(int* self, int n) {
        if (n <= 1) { return n; }
        return fib(n - 1) + fib(n - 2);
    }
}

func int main() {
    m is Math();
    txtout(m.fib(10));
    free(m);
    out(0);
}
EOF
./build/znc /tmp/test_method_recursion.zn -o /tmp/test_method_recursion | grep -E "(Successful|Found|Assembly written)" || true
/tmp/test_method_recursion | grep -q "^55$" || { echo "❌ Method recursion output mismatch"; exit 1; }

# Test 17: Mutual recursion
echo ""
echo "[Test 17] Mutual Recursion"
cat > /tmp/test_mutual_recursion.zn << 'EOF'
func bool is_even(int n) {
    if (n == 0) { return true; }
    return is_odd(n - 1);
}

func bool is_odd(int n) {
    if (n == 0) { return false; }
    return is_even(n - 1);
}

func int main() {
    txtout(is_even(10));
    txtout(is_odd(9));
    out(0);
}
EOF
./build/znc /tmp/test_mutual_recursion.zn -o /tmp/test_mutual_recursion | grep -E "(Successful|Found|Assembly written)" || true
/tmp/test_mutual_recursion | head -n 2 | tr '\n' ' ' | grep -q "^1 1 " || { echo "❌ Mutual recursion output mismatch"; exit 1; }

# Test 18: Static method (no self) callable from instance without extra arg
echo ""
echo "[Test 18] Static Method Call"
cat > /tmp/test_static_method.zn << 'EOF'
class Math {
    func int add(int a, int b) { return a + b; }
}
func int main() {
    m is Math();
    txtout(m.add(40, 2));
    free(m);
    out(0);
}
EOF
./build/znc /tmp/test_static_method.zn -o /tmp/test_static_method | grep -E "(Successful|Found|Assembly written)" || true
/tmp/test_static_method | grep -q "^42$" || { echo "❌ Static method output mismatch"; exit 1; }

# Test 19: Zinc port stub builds and runs
echo ""
echo "[Test 19] Zinc Port Stub"
./build/znc src-zn/main.zn -o /tmp/test_zn_port | grep -E "(Successful|Found|Assembly written)" || true
if [ ! -x /tmp/test_zn_port ]; then
  echo "❌ Expected /tmp/test_zn_port executable"
  exit 1
fi
out_zn_port="$(/tmp/test_zn_port examples/example1_hello.zn 2>&1 || true)"
echo "${out_zn_port}" | grep -q "IDENT(.*): func" || { echo "❌ Zinc port stub did not lex identifiers"; exit 1; }
echo "${out_zn_port}" | grep -q "PUNCT(.*): (" || { echo "❌ Zinc port stub did not lex punctuation"; exit 1; }

echo ""
echo "[Test 19b] Zinc Port Lexer Operators"
cat > /tmp/test_zn_lex_ops.zn << 'EOF'
func int main() {
    a is 1;
    b is 2;
    if (a <= b && a != 0) {
        out(0);
    }
    out(0);
}
EOF
out_zn_port_ops="$(/tmp/test_zn_port /tmp/test_zn_lex_ops.zn 2>&1 || true)"
echo "${out_zn_port_ops}" | grep -q "PUNCT(.*): <=" || { echo "❌ Zinc port lexer did not lex '<='"; exit 1; }
echo "${out_zn_port_ops}" | grep -q "PUNCT(.*): &&" || { echo "❌ Zinc port lexer did not lex '&&'"; exit 1; }
echo "${out_zn_port_ops}" | grep -q "PUNCT(.*): !=" || { echo "❌ Zinc port lexer did not lex '!='"; exit 1; }

# Test 20: New builtins + stdlib helpers (len/substr/ptr_load/ptr_store/bitwise + VecInt)
echo ""
echo "[Test 20] Stdlib + Builtins"
cat > /tmp/test_stdlib_builtins.zn << 'EOF'
import("/home/nyarch/zn/zinc-standard-lib/String.zn");
import("/home/nyarch/zn/zinc-standard-lib/Memory.zn");
import("/home/nyarch/zn/zinc-standard-lib/VecInt.zn");

func int main() {
    x is 1 | 64;
    txtout(x);

    s is "hello";
    t is substr(s, 1, 3);
    txtout(t);
    free(t);

    v is VecInt();
    v.init();
    v.push(40);
    v.push(2);
    txtout(v.get(0) + v.get(1));
    v.destroy();
    free(v);

    out(0);
}
EOF
./build/znc /tmp/test_stdlib_builtins.zn -o /tmp/test_stdlib_builtins | grep -E "(Successful|Found|Assembly written)" || true
/tmp/test_stdlib_builtins | head -n 3 | tr '\n' ' ' | grep -q "^65 ell 42 " || { echo "❌ Stdlib/builtins output mismatch"; exit 1; }

# Test 21: Zinc port backend (codegen subset)
echo ""
echo "[Test 21] Zinc Port Backend"
if [ ! -x /tmp/test_zn_port ]; then
  echo "❌ Expected /tmp/test_zn_port executable"
  exit 1
fi

out_ex1="$(/tmp/test_zn_port examples/example1_hello.zn --compile --backend=zn -o /tmp/zn_backend_ex1 2>&1 || true)"
echo "${out_ex1}" | grep -q "^Built$" || { echo "❌ Zinc backend did not report 'Built'"; exit 1; }
/tmp/zn_backend_ex1 | head -n 2 | tr '\n' ' ' | grep -q "^Hello, Zinc! 8 " || { echo "❌ Zinc backend example1 output mismatch"; exit 1; }

out_ex6="$(/tmp/test_zn_port examples/example6_pointers.zn --compile --backend=zn -o /tmp/zn_backend_ex6 2>&1 || true)"
echo "${out_ex6}" | grep -q "^Built$" || { echo "❌ Zinc backend did not build example6"; exit 1; }
/tmp/zn_backend_ex6 | head -n 2 | tr '\n' ' ' | grep -q "^42 nullptr ok " || { echo "❌ Zinc backend example6 output mismatch"; exit 1; }

out_ex8="$(/tmp/test_zn_port examples/example8_test_input.zn --compile --backend=zn -o /tmp/zn_backend_ex8 2>&1 || true)"
echo "${out_ex8}" | grep -q "^Built$" || { echo "❌ Zinc backend did not build example8"; exit 1; }
printf 'Bob\n' | /tmp/zn_backend_ex8 | tr '\n' ' ' | grep -q "Hello, Bob" || { echo "❌ Zinc backend example8 output mismatch"; exit 1; }

# Cleanup test files
rm -f /tmp/test_hello.zn /tmp/test_hello.s \
      /tmp/test_var.zn /tmp/test_var.s \
      /tmp/test_if.zn /tmp/test_if.s \
      /tmp/test_else_if.zn /tmp/test_else_if.s \
      /tmp/test_ptr.zn /tmp/test_ptr.s \
      /tmp/test_dynamic.zn /tmp/test_dynamic.s \
      /tmp/test_txtout_args.zn /tmp/test_txtout_args.s \
      /tmp/test_script.zn /tmp/test_script.s \
      /tmp/test_script.log \
      /tmp/test_bad_assign.zn /tmp/test_bad_assign.s /tmp/test_bad_assign.log \
      /tmp/test_kw_ident_bad.zn /tmp/test_kw_ident_bad.s /tmp/test_kw_ident_bad.log \
      /tmp/test_kw_ident_ok.zn /tmp/test_kw_ident_ok.s \
      /tmp/test_eq_assign.zn /tmp/test_eq_assign.s /tmp/test

rm -rf /tmp/zn_mods
rm -f /tmp/test_imports.zn /tmp/test_imports.s /tmp/test_imports \
      /tmp/test_circular.zn /tmp/test_circular.s /tmp/test_circular.log
rm -f /tmp/test_recursion.zn /tmp/test_recursion.s /tmp/test_recursion
rm -f /tmp/test_method_recursion.zn /tmp/test_method_recursion.s /tmp/test_method_recursion
rm -f /tmp/test_mutual_recursion.zn /tmp/test_mutual_recursion.s /tmp/test_mutual_recursion
rm -f /tmp/test_static_method.zn /tmp/test_static_method.s /tmp/test_static_method
rm -f /tmp/test_zn_port.s /tmp/test_zn_port
rm -f /tmp/test_zn_lex_ops.zn
rm -f /tmp/test_stdlib_builtins.zn /tmp/test_stdlib_builtins.s /tmp/test_stdlib_builtins
rm -f /tmp/zn_backend_ex1 /tmp/zn_backend_ex6 /tmp/zn_backend_ex8

echo ""
echo "✅ All tests passed!"
