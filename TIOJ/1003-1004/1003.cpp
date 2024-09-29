#pragma GCC optimize ("O3")
#include <bits/stdc++.h>

using namespace std;

int main() {
    ios::sync_with_stdio(false), cin.tie(nullptr), cout.tie(nullptr);
    uint16_t n, m = 1;
    cin >> n;
    for (uint8_t i = 1; i <= n; i++) {
        m += i;
    }
    cout << m << '\n';
    return 0;
}