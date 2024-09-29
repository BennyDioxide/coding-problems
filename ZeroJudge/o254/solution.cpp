#pragma GCC optimize ("O3")
#include <bits/stdc++.h>

using namespace std;

int main() {
    ios::sync_with_stdio(false), cin.tie(nullptr), cout.tie(nullptr);
    uint32_t a, b;
    cin >> a >> b;
    cout << max(a, b + 1) << '\n';
    return 0;
}